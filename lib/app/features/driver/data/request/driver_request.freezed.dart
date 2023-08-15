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
  int get maxPenumpang => throw _privateConstructorUsedError;

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
  $Res call({String id, String lat, String long, int maxPenumpang});
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
    Object? maxPenumpang = null,
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
      maxPenumpang: null == maxPenumpang
          ? _value.maxPenumpang
          : maxPenumpang // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({String id, String lat, String long, int maxPenumpang});
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
    Object? maxPenumpang = null,
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
      maxPenumpang: null == maxPenumpang
          ? _value.maxPenumpang
          : maxPenumpang // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverLocationRequest implements _DriverLocationRequest {
  const _$_DriverLocationRequest(
      {required this.id,
      required this.lat,
      required this.long,
      required this.maxPenumpang});

  factory _$_DriverLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DriverLocationRequestFromJson(json);

  @override
  final String id;
  @override
  final String lat;
  @override
  final String long;
  @override
  final int maxPenumpang;

  @override
  String toString() {
    return 'DriverLocationRequest(id: $id, lat: $lat, long: $long, maxPenumpang: $maxPenumpang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverLocationRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.maxPenumpang, maxPenumpang) ||
                other.maxPenumpang == maxPenumpang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lat, long, maxPenumpang);

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
      required final String long,
      required final int maxPenumpang}) = _$_DriverLocationRequest;

  factory _DriverLocationRequest.fromJson(Map<String, dynamic> json) =
      _$_DriverLocationRequest.fromJson;

  @override
  String get id;
  @override
  String get lat;
  @override
  String get long;
  @override
  int get maxPenumpang;
  @override
  @JsonKey(ignore: true)
  _$$_DriverLocationRequestCopyWith<_$_DriverLocationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverLocation _$DriverLocationFromJson(Map<String, dynamic> json) {
  return _DriverLocation.fromJson(json);
}

/// @nodoc
mixin _$DriverLocation {
  String get id => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get long => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  int get maxPenumpang => throw _privateConstructorUsedError;
  int? get jumlahPenumpang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverLocationCopyWith<DriverLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverLocationCopyWith<$Res> {
  factory $DriverLocationCopyWith(
          DriverLocation value, $Res Function(DriverLocation) then) =
      _$DriverLocationCopyWithImpl<$Res, DriverLocation>;
  @useResult
  $Res call(
      {String id,
      String lat,
      String long,
      bool visible,
      int maxPenumpang,
      int? jumlahPenumpang});
}

/// @nodoc
class _$DriverLocationCopyWithImpl<$Res, $Val extends DriverLocation>
    implements $DriverLocationCopyWith<$Res> {
  _$DriverLocationCopyWithImpl(this._value, this._then);

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
    Object? visible = null,
    Object? maxPenumpang = null,
    Object? jumlahPenumpang = freezed,
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
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      maxPenumpang: null == maxPenumpang
          ? _value.maxPenumpang
          : maxPenumpang // ignore: cast_nullable_to_non_nullable
              as int,
      jumlahPenumpang: freezed == jumlahPenumpang
          ? _value.jumlahPenumpang
          : jumlahPenumpang // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverLocationCopyWith<$Res>
    implements $DriverLocationCopyWith<$Res> {
  factory _$$_DriverLocationCopyWith(
          _$_DriverLocation value, $Res Function(_$_DriverLocation) then) =
      __$$_DriverLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String lat,
      String long,
      bool visible,
      int maxPenumpang,
      int? jumlahPenumpang});
}

/// @nodoc
class __$$_DriverLocationCopyWithImpl<$Res>
    extends _$DriverLocationCopyWithImpl<$Res, _$_DriverLocation>
    implements _$$_DriverLocationCopyWith<$Res> {
  __$$_DriverLocationCopyWithImpl(
      _$_DriverLocation _value, $Res Function(_$_DriverLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lat = null,
    Object? long = null,
    Object? visible = null,
    Object? maxPenumpang = null,
    Object? jumlahPenumpang = freezed,
  }) {
    return _then(_$_DriverLocation(
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
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      maxPenumpang: null == maxPenumpang
          ? _value.maxPenumpang
          : maxPenumpang // ignore: cast_nullable_to_non_nullable
              as int,
      jumlahPenumpang: freezed == jumlahPenumpang
          ? _value.jumlahPenumpang
          : jumlahPenumpang // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverLocation implements _DriverLocation {
  const _$_DriverLocation(
      {required this.id,
      required this.lat,
      required this.long,
      required this.visible,
      required this.maxPenumpang,
      required this.jumlahPenumpang});

  factory _$_DriverLocation.fromJson(Map<String, dynamic> json) =>
      _$$_DriverLocationFromJson(json);

  @override
  final String id;
  @override
  final String lat;
  @override
  final String long;
  @override
  final bool visible;
  @override
  final int maxPenumpang;
  @override
  final int? jumlahPenumpang;

  @override
  String toString() {
    return 'DriverLocation(id: $id, lat: $lat, long: $long, visible: $visible, maxPenumpang: $maxPenumpang, jumlahPenumpang: $jumlahPenumpang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverLocation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.maxPenumpang, maxPenumpang) ||
                other.maxPenumpang == maxPenumpang) &&
            (identical(other.jumlahPenumpang, jumlahPenumpang) ||
                other.jumlahPenumpang == jumlahPenumpang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, lat, long, visible, maxPenumpang, jumlahPenumpang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverLocationCopyWith<_$_DriverLocation> get copyWith =>
      __$$_DriverLocationCopyWithImpl<_$_DriverLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverLocationToJson(
      this,
    );
  }
}

abstract class _DriverLocation implements DriverLocation {
  const factory _DriverLocation(
      {required final String id,
      required final String lat,
      required final String long,
      required final bool visible,
      required final int maxPenumpang,
      required final int? jumlahPenumpang}) = _$_DriverLocation;

  factory _DriverLocation.fromJson(Map<String, dynamic> json) =
      _$_DriverLocation.fromJson;

  @override
  String get id;
  @override
  String get lat;
  @override
  String get long;
  @override
  bool get visible;
  @override
  int get maxPenumpang;
  @override
  int? get jumlahPenumpang;
  @override
  @JsonKey(ignore: true)
  _$$_DriverLocationCopyWith<_$_DriverLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
