// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rutes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RutesResponse _$$_RutesResponseFromJson(Map<String, dynamic> json) =>
    _$_RutesResponse(
      code: json['code'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RuteResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RutesResponseToJson(_$_RutesResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };
