// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverImpl _$$DriverImplFromJson(Map<String, dynamic> json) => _$DriverImpl(
      id: json['id'] as String,
      namaLengkap: json['namaLengkap'] as String,
      alamat: json['alamat'] as String,
      nik: json['nik'] as String,
      nokk: json['nokk'] as String,
      noHp: json['noHp'] as String,
      noPlatMobil: json['noPlatMobil'] as String,
      maxPenumpang: json['maxPenumpang'] as int,
      fotoKtp: json['fotoKtp'] as String,
      fotoMobil: json['fotoMobil'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DriverImplToJson(_$DriverImpl instance) =>
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
