// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    _$_UserResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      status: json['status'] as bool?,
      role: json['role'] as String?,
      image: json['image'] as String?,
      accessToken: json['accessToken'] as String?,
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'status': instance.status,
      'role': instance.role,
      'image': instance.image,
      'accessToken': instance.accessToken,
    };
