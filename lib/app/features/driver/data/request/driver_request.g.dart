// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverLocationRequest _$$_DriverLocationRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DriverLocationRequest(
      id: json['id'] as String,
      lat: json['lat'] as String,
      long: json['long'] as String,
      maxPenumpang: json['maxPenumpang'] as int,
    );

Map<String, dynamic> _$$_DriverLocationRequestToJson(
        _$_DriverLocationRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'long': instance.long,
      'maxPenumpang': instance.maxPenumpang,
    };

_$_DriverLocation _$$_DriverLocationFromJson(Map<String, dynamic> json) =>
    _$_DriverLocation(
      id: json['id'] as String,
      lat: json['lat'] as String,
      long: json['long'] as String,
      maxPenumpang: json['maxPenumpang'] as int,
      jumlahPenumpang: json['jumlahPenumpang'] as int?,
    );

Map<String, dynamic> _$$_DriverLocationToJson(_$_DriverLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'long': instance.long,
      'maxPenumpang': instance.maxPenumpang,
      'jumlahPenumpang': instance.jumlahPenumpang,
    };
