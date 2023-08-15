import 'package:flutter_color/flutter_color.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '/app/utils/extension/string_extension.dart';
import '/app/services/remote/config/result.dart';
import '../../data/response/rute_response.dart';
import '../../data/response/rutes_response.dart';
import '../../domain/model/rute.dart';
import '../../domain/model/rutes.dart';

class HomeMapper {
  HomeMapper._();

  static Future<Result<Rutes>> mapToRutesResult(
    Result<RutesResponse> response,
  ) {
    return response.when(
      success: (rutes) async {
        final resultData = <Rute>[];
        for (RuteResponse rute in (rutes.data ?? [])) {
          final result = await mapToRute(rute,resultData.length);
          resultData.add(result);
        }

        return Result.success(
          Rutes(
            code: rutes.code.toEmpty,
            data: resultData,
            // locations: resultData.map((e) => e.locations).toSet(),
          ),
        );
      },
      failure: (error, stacktrace) {
        return Future(() => Result.failure(error, stacktrace));
      },
    );
  }

  static Future<Result<Rute>> mapToRuteResult(Result<RuteResponse> response) {
    return response.when(
      success: (rute) async {
        final result = await mapToRute(rute);
        return Result.success(result);
      },
      failure: (error, stacktrace) {
        return Future(() => Result.failure(error, stacktrace));
      },
    );
  }

  static Future<Rute> mapToRute(RuteResponse rute,[int? index]) async {
    return Rute(
      id: rute.id.toEmpty,
      createdAt: DateTime.parse(rute.createdAt.toEmpty),
      updatedAt: DateTime.parse(rute.updatedAt.toEmpty),
      name: rute.name.toEmpty,
      color: rute.color.toEmpty,
      kode: rute.kode.toEmpty,
      locations: mapToLocations(
        await listToPoints(rute.locations),
        rute.color.toEmpty,
        rute.id.toEmpty,
        index,
      ),
    );
  }

  static PolylineResult mapToPolylineResult(List<PointLatLng> points) {
    return PolylineResult(
      status: "Berhasil...",
      errorMessage: "Ada Yang Salah..",
      points: points,
    );
  }

  static Future<List<PointLatLng>> listToPoints(
    List<LocationsResponse>? locations,
  ) async {
    // log(locations.toString(),name: "LocationsResponse");
    final list = <PointLatLng>[];
    for (LocationsResponse location in (locations ?? [])) {
      final awal = PointLatLng(
        double.parse(location.latAwal!),
        double.parse(location.longAwal!),
      );
      final akhir = PointLatLng(
        double.parse(location.latAkhir!),
        double.parse(location.longAkhir!),
      );

      final result = await getPolylineResult(awal, akhir);
      list.addAll(result.points);
    }

    return list;
  }

  static Future<PolylineResult> getPolylineResult(
    PointLatLng awal,
    PointLatLng akhir,
  ) {
    PolylinePoints polylinePoints = PolylinePoints();
    return polylinePoints.getRouteBetweenCoordinates(
      dotenv.get("API_GOOGLE_MAP"),
      awal,
      akhir,
    );
  }

  static Polyline mapToLocations(
    List<PointLatLng> locations,
    String color,
    String id,
    int? index,
  ) {
    return Polyline(
      zIndex: index ?? 0,
      polylineId: PolylineId(id),
      endCap: Cap.roundCap,
      startCap: Cap.roundCap,
      points: locations
          .map(
            (e) => LatLng(e.latitude, e.longitude),
          )
          .toList(),
      color: HexColor(color.replaceFirst("#", "")),
    );
  }
}
