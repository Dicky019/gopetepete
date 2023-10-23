// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daftar_driver_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DaftarDriverRequestImpl _$$DaftarDriverRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DaftarDriverRequestImpl(
      namaLengkap: json['namaLengkap'] as String,
      alamat: json['alamat'] as String,
      nik: json['nik'] as String,
      nokk: json['nokk'] as String,
      noHp: json['noHp'] as String,
      noPlatMobil: json['noPlatMobil'] as String,
      maxPenumpang: json['maxPenumpang'] as int,
      fotoKtp: json['fotoKtp'] as String,
      fotoMobil: json['fotoMobil'] as String,
      user: DaftarDriverUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DaftarDriverRequestImplToJson(
        _$DaftarDriverRequestImpl instance) =>
    <String, dynamic>{
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

_$DaftarDriverFormAwalImpl _$$DaftarDriverFormAwalImplFromJson(
        Map<String, dynamic> json) =>
    _$DaftarDriverFormAwalImpl(
      name: json['name'] as String,
      nik: json['nik'] as String,
      nokk: json['nokk'] as String,
      namaLengkap: json['namaLengkap'] as String,
      noHp: json['noHp'] as String,
      email: json['email'] as String,
      alamat: json['alamat'] as String,
      noPlatMobil: json['noPlatMobil'] as String,
      maxPenumpang: json['maxPenumpang'] as int,
    );

Map<String, dynamic> _$$DaftarDriverFormAwalImplToJson(
        _$DaftarDriverFormAwalImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nik': instance.nik,
      'nokk': instance.nokk,
      'namaLengkap': instance.namaLengkap,
      'noHp': instance.noHp,
      'email': instance.email,
      'alamat': instance.alamat,
      'noPlatMobil': instance.noPlatMobil,
      'maxPenumpang': instance.maxPenumpang,
    };

_$DaftarDriverUserImpl _$$DaftarDriverUserImplFromJson(
        Map<String, dynamic> json) =>
    _$DaftarDriverUserImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$DaftarDriverUserImplToJson(
        _$DaftarDriverUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
    };
