import 'package:flutter_application_1/app/utils/extension/string_extension.dart';

import '../../data/response/rute_response.dart';
import '../../data/response/rutes_response.dart';
import '../../domain/model/rute.dart';
import '../../domain/model/rutes.dart';
import '/app/services/remote/config/result.dart';

class HomeMapper {
  HomeMapper._();

  static Result<Rutes> mapToRutes(Result<RutesResponse> response) {
    return response.when(
      success: (rutes) {
        final resultData = rutes.data
            ?.map((rute) => Rute(
                  id: rute.id.toEmpty,
                  createdAt: DateTime.parse(rute.createdAt.toEmpty),
                  updatedAt: DateTime.parse(rute.updatedAt.toEmpty),
                  name: rute.name.toEmpty,
                  color: rute.color.toEmpty,
                  kode: rute.kode.toEmpty,
                  latAkhir: rute.latAkhir.toEmpty,
                  longAkhir: rute.longAkhir.toEmpty,
                  longAwal: rute.longAwal.toEmpty,
                  latAwal: rute.latAwal.toEmpty,
                ))
            .toList();
        return Result.success(
          Rutes(code: rutes.code.toEmpty, data: resultData ?? []),
        );
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }

  static Result<Rute> mapToRute(Result<RuteResponse> response) {
    return response.when(
      success: (rute) {
        final result = Rute(
          id: rute.id.toEmpty,
          createdAt: DateTime.parse(rute.createdAt.toEmpty),
          updatedAt: DateTime.parse(rute.updatedAt.toEmpty),
          name: rute.name.toEmpty,
          color: rute.color.toEmpty,
          kode: rute.kode.toEmpty,
          latAkhir: rute.latAkhir.toEmpty,
          longAkhir: rute.longAkhir.toEmpty,
          longAwal: rute.longAwal.toEmpty,
          latAwal: rute.latAwal.toEmpty,
        );
        return Result.success(result);
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }
  
}
