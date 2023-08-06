// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rute_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RuteResponse _$$_RuteResponseFromJson(Map<String, dynamic> json) =>
    _$_RuteResponse(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      name: json['name'] as String?,
      kode: json['kode'] as String?,
      color: json['color'] as String?,
      latAwal: json['latAwal'] as String?,
      longAwal: json['longAwal'] as String?,
      latAkhir: json['latAkhir'] as String?,
      longAkhir: json['longAkhir'] as String?,
    );

Map<String, dynamic> _$$_RuteResponseToJson(_$_RuteResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'name': instance.name,
      'kode': instance.kode,
      'color': instance.color,
      'latAwal': instance.latAwal,
      'longAwal': instance.longAwal,
      'latAkhir': instance.latAkhir,
      'longAkhir': instance.longAkhir,
    };
