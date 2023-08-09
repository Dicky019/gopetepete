// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverLocationRequest _$DriverLocationRequestFromJson(
    Map<String, dynamic> json) {
  return _DriverLocationRequest.fromJson(json);
}

/// @nodoc
mixin _$DriverLocationRequest {
  String get id => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverLocationRequestCopyWith<DriverLocationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverLocationRequestCopyWith<$Res> {
  factory $DriverLocationRequestCopyWith(DriverLocationRequest value,
          $Res Function(DriverLocationRequest) then) =
      _$DriverLocationRequestCopyWithImpl<$Res, DriverLocationRequest>;
  @useResult
  $Res call({String id, String lat, String long});
}

/// @nodoc
class _$DriverLocationRequestCopyWithImpl<$Res,
        $Val extends DriverLocationRequest>
    implements $DriverLocationRequestCopyWith<$Res> {
  _$DriverLocationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverLocationRequestCopyWith<$Res>
    implements $DriverLocationRequestCopyWith<$Res> {
  factory _$$_DriverLocationRequestCopyWith(_$_DriverLocationRequest value,
          $Res Function(_$_DriverLocationRequest) then) =
      __$$_DriverLocationRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String lat, String long});
}

/// @nodoc
class __$$_DriverLocationRequestCopyWithImpl<$Res>
    extends _$DriverLocationRequestCopyWithImpl<$Res, _$_DriverLocationRequest>
    implements _$$_DriverLocationRequestCopyWith<$Res> {
  __$$_DriverLocationRequestCopyWithImpl(_$_DriverLocationRequest _value,
      $Res Function(_$_DriverLocationRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$_DriverLocationRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverLocationRequest implements _DriverLocationRequest {
  const _$_DriverLocationRequest(
      {required this.id, required this.lat, required this.long});

  factory _$_DriverLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DriverLocationRequestFromJson(json);

  @override
  final String id;
  @override
  final String lat;
  @override
  final String long;

  @override
  String toString() {
    return 'DriverLocationRequest(id: $id, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverLocationRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverLocationRequestCopyWith<_$_DriverLocationRequest> get copyWith =>
      __$$_DriverLocationRequestCopyWithImpl<_$_DriverLocationRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverLocationRequestToJson(
      this,
    );
  }
}

abstract class _DriverLocationRequest implements DriverLocationRequest {
  const factory _DriverLocationRequest(
      {required final String id,
      required final String lat,
      required final String long}) = _$_DriverLocationRequest;

  factory _DriverLocationRequest.fromJson(Map<String, dynamic> json) =
      _$_DriverLocationRequest.fromJson;

  @override
  String get id;
  @override
  String get lat;
  @override
  String get long;
  @override
  @JsonKey(ignore: true)
  _$$_DriverLocationRequestCopyWith<_$_DriverLocationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
