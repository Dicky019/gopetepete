// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverResponseImpl _$$DriverResponseImplFromJson(Map<String, dynamic> json) =>
    _$DriverResponseImpl(
      id: json['id'] as String?,
      namaLengkap: json['namaLengkap'] as String?,
      alamat: json['alamat'] as String?,
      nik: json['nik'] as String?,
      nokk: json['nokk'] as String?,
      noHp: json['noHp'] as String?,
      noPlatMobil: json['noPlatMobil'] as String?,
      maxPenumpang: json['maxPenumpang'] as int?,
      fotoKtp: json['fotoKtp'] as String?,
      fotoMobil: json['fotoMobil'] as String?,
      user: json['user'] == null
          ? null
          : UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DriverResponseImplToJson(
        _$DriverResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'namaLengkap': instance.namaLengkap,
      'alamat': instance.alamat,
      'nik': instance.nik,
      'nokk': instance.nokk,
      'noHp': instance.noHp,
      'noPlatMobil': instance.noPlatMobil,
      'maxPenumpang': instance.maxPenumpang,
      'fotoKtp': instance.fotoKtp,
      'fotoMobil': instance.fotoMobil,
      'user': instance.user,
    };
