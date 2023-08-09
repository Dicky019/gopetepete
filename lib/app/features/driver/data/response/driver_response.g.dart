// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverLocationResponse _$$_DriverLocationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DriverLocationResponse(
      id: json['id'] as String?,
      namaLengkap: json['lat'] as String?,
      alamat: json['long'] as String?,
    );

Map<String, dynamic> _$$_DriverLocationResponseToJson(
        _$_DriverLocationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lat': instance.namaLengkap,
      'long': instance.alamat,
    };
