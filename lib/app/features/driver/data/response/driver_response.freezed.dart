// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverLocationResponse _$DriverLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _DriverLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$DriverLocationResponse {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "lat")
  String? get namaLengkap => throw _privateConstructorUsedError;
  @JsonKey(name: "long")
  String? get alamat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverLocationResponseCopyWith<DriverLocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverLocationResponseCopyWith<$Res> {
  factory $DriverLocationResponseCopyWith(DriverLocationResponse value,
          $Res Function(DriverLocationResponse) then) =
      _$DriverLocationResponseCopyWithImpl<$Res, DriverLocationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "lat") String? namaLengkap,
      @JsonKey(name: "long") String? alamat});
}

/// @nodoc
class _$DriverLocationResponseCopyWithImpl<$Res,
        $Val extends DriverLocationResponse>
    implements $DriverLocationResponseCopyWith<$Res> {
  _$DriverLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaLengkap = freezed,
    Object? alamat = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      namaLengkap: freezed == namaLengkap
          ? _value.namaLengkap
          : namaLengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverLocationResponseCopyWith<$Res>
    implements $DriverLocationResponseCopyWith<$Res> {
  factory _$$_DriverLocationResponseCopyWith(_$_DriverLocationResponse value,
          $Res Function(_$_DriverLocationResponse) then) =
      __$$_DriverLocationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "lat") String? namaLengkap,
      @JsonKey(name: "long") String? alamat});
}

/// @nodoc
class __$$_DriverLocationResponseCopyWithImpl<$Res>
    extends _$DriverLocationResponseCopyWithImpl<$Res,
        _$_DriverLocationResponse>
    implements _$$_DriverLocationResponseCopyWith<$Res> {
  __$$_DriverLocationResponseCopyWithImpl(_$_DriverLocationResponse _value,
      $Res Function(_$_DriverLocationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaLengkap = freezed,
    Object? alamat = freezed,
  }) {
    return _then(_$_DriverLocationResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      namaLengkap: freezed == namaLengkap
          ? _value.namaLengkap
          : namaLengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverLocationResponse implements _DriverLocationResponse {
  const _$_DriverLocationResponse(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "lat") this.namaLengkap,
      @JsonKey(name: "long") this.alamat});

  factory _$_DriverLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DriverLocationResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "lat")
  final String? namaLengkap;
  @override
  @JsonKey(name: "long")
  final String? alamat;

  @override
  String toString() {
    return 'DriverLocationResponse(id: $id, namaLengkap: $namaLengkap, alamat: $alamat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverLocationResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaLengkap, namaLengkap) ||
                other.namaLengkap == namaLengkap) &&
            (identical(other.alamat, alamat) || other.alamat == alamat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, namaLengkap, alamat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverLocationResponseCopyWith<_$_DriverLocationResponse> get copyWith =>
      __$$_DriverLocationResponseCopyWithImpl<_$_DriverLocationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverLocationResponseToJson(
      this,
    );
  }
}

abstract class _DriverLocationResponse implements DriverLocationResponse {
  const factory _DriverLocationResponse(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "lat") final String? namaLengkap,
      @JsonKey(name: "long") final String? alamat}) = _$_DriverLocationResponse;

  factory _DriverLocationResponse.fromJson(Map<String, dynamic> json) =
      _$_DriverLocationResponse.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "lat")
  String? get namaLengkap;
  @override
  @JsonKey(name: "long")
  String? get alamat;
  @override
  @JsonKey(ignore: true)
  _$$_DriverLocationResponseCopyWith<_$_DriverLocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
