// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Driver _$$_DriverFromJson(Map<String, dynamic> json) => _$_Driver(
      id: json['id'] as String,
      namaLengkap: json['namaLengkap'] as String,
      alamat: json['alamat'] as String,
      nik: json['nik'] as String,
      nokk: json['nokk'] as String,
      noHp: json['noHp'] as String,
      noPlatMobil: json['noPlatMobil'] as String,
      maxPenumpang: json['maxPenumpang'] as String,
      fotoKtp: json['fotoKtp'] as String,
      fotoMobil: json['fotoMobil'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DriverToJson(_$_Driver instance) => <String, dynamic>{
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
