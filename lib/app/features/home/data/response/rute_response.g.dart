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
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => LocationsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RuteResponseToJson(_$_RuteResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'name': instance.name,
      'kode': instance.kode,
      'color': instance.color,
      'locations': instance.locations,
    };

_$_LocationsResponse _$$_LocationsResponseFromJson(Map<String, dynamic> json) =>
    _$_LocationsResponse(
      id: json['id'] as String?,
      latAwal: json['latAwal'] as String?,
      longAwal: json['longAwal'] as String?,
      latAkhir: json['latAkhir'] as String?,
      longAkhir: json['longAkhir'] as String?,
    );

Map<String, dynamic> _$$_LocationsResponseToJson(
        _$_LocationsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latAwal': instance.latAwal,
      'longAwal': instance.longAwal,
      'latAkhir': instance.latAkhir,
      'longAkhir': instance.longAkhir,
    };
