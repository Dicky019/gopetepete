// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rute_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RuteResponseImpl _$$RuteResponseImplFromJson(Map<String, dynamic> json) =>
    _$RuteResponseImpl(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      name: json['name'] as String?,
      kode: json['kode'] as String?,
      color: json['color'] as String?,
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => LocationsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RuteResponseImplToJson(_$RuteResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'name': instance.name,
      'kode': instance.kode,
      'color': instance.color,
      'locations': instance.locations,
    };

_$LocationsResponseImpl _$$LocationsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationsResponseImpl(
      id: json['id'] as String?,
      latAwal: json['latAwal'] as String?,
      longAwal: json['longAwal'] as String?,
      latAkhir: json['latAkhir'] as String?,
      longAkhir: json['longAkhir'] as String?,
    );

Map<String, dynamic> _$$LocationsResponseImplToJson(
        _$LocationsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latAwal': instance.latAwal,
      'longAwal': instance.longAwal,
      'latAkhir': instance.latAkhir,
      'longAkhir': instance.longAkhir,
    };
