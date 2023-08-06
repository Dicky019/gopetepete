// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daftar_driver_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DaftarDriverRequest _$$_DaftarDriverRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DaftarDriverRequest(
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

Map<String, dynamic> _$$_DaftarDriverRequestToJson(
        _$_DaftarDriverRequest instance) =>
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

_$_DaftarDriverFormAwal _$$_DaftarDriverFormAwalFromJson(
        Map<String, dynamic> json) =>
    _$_DaftarDriverFormAwal(
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

Map<String, dynamic> _$$_DaftarDriverFormAwalToJson(
        _$_DaftarDriverFormAwal instance) =>
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

_$_DaftarDriverUser _$$_DaftarDriverUserFromJson(Map<String, dynamic> json) =>
    _$_DaftarDriverUser(
      name: json['name'] as String,
      email: json['email'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_DaftarDriverUserToJson(_$_DaftarDriverUser instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
    };
