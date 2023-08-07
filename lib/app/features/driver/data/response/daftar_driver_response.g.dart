// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daftar_driver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DaftarDriverResponse _$$_DaftarDriverResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DaftarDriverResponse(
      code: json['code'] as String?,
      data: json['data'] == null
          ? null
          : DaftarDriverData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DaftarDriverResponseToJson(
        _$_DaftarDriverResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_DaftarDriverData _$$_DaftarDriverDataFromJson(Map<String, dynamic> json) =>
    _$_DaftarDriverData(
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
      latAwal: json['latAwal'] as String?,
      longAwal: json['longAwal'] as String?,
      accessToken: json['accessToken'] as String?,
      user: json['user'] == null
          ? null
          : UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DaftarDriverDataToJson(_$_DaftarDriverData instance) =>
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
      'latAwal': instance.latAwal,
      'longAwal': instance.longAwal,
      'accessToken': instance.accessToken,
      'user': instance.user,
    };
