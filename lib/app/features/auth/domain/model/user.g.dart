// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userName: json['userName'] as String,
      email: json['email'] as String,
      userRole: $enumDecode(_$UserRoleEnumMap, json['userRole']),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userName': instance.userName,
      'email': instance.email,
      'userRole': _$UserRoleEnumMap[instance.userRole]!,
    };

const _$UserRoleEnumMap = {
  UserRole.driver: 'driver',
  UserRole.user: 'user',
};
