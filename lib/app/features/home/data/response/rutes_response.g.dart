// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rutes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RutesResponseImpl _$$RutesResponseImplFromJson(Map<String, dynamic> json) =>
    _$RutesResponseImpl(
      code: json['code'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RuteResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RutesResponseImplToJson(_$RutesResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };
