// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverLocationRequestImpl _$$DriverLocationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DriverLocationRequestImpl(
      id: json['id'] as String,
      lat: json['lat'] as String,
      long: json['long'] as String,
      maxPenumpang: json['maxPenumpang'] as int,
    );

Map<String, dynamic> _$$DriverLocationRequestImplToJson(
        _$DriverLocationRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'long': instance.long,
      'maxPenumpang': instance.maxPenumpang,
    };

_$DriverLocationImpl _$$DriverLocationImplFromJson(Map<String, dynamic> json) =>
    _$DriverLocationImpl(
      id: json['id'] as String,
      lat: json['lat'] as String,
      long: json['long'] as String,
      image: json['image'] as String,
      platNomor: json['platNomor'] as String,
      visible: json['visible'] as bool,
      maxPenumpang: json['maxPenumpang'] as int,
      jumlahPenumpang: json['jumlahPenumpang'] as int?,
    );

Map<String, dynamic> _$$DriverLocationImplToJson(
        _$DriverLocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'long': instance.long,
      'image': instance.image,
      'platNomor': instance.platNomor,
      'visible': instance.visible,
      'maxPenumpang': instance.maxPenumpang,
      'jumlahPenumpang': instance.jumlahPenumpang,
    };
