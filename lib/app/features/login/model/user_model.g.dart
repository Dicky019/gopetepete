// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userName: json['userName'] as String,
      email: json['email'] as String,
      userRole: $enumDecode(_$UserRoleEnumMap, json['userRole']),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'email': instance.email,
      'userRole': _$UserRoleEnumMap[instance.userRole]!,
    };

const _$UserRoleEnumMap = {
  UserRole.driver: 'driver',
  UserRole.user: 'user',
};
