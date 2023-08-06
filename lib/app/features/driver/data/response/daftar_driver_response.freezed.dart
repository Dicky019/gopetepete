// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daftar_driver_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DaftarDriverImageResponse {
  String get image => throw _privateConstructorUsedError;
  String get fotoKtp => throw _privateConstructorUsedError;
  String get fotoMobil => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DaftarDriverImageResponseCopyWith<DaftarDriverImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaftarDriverImageResponseCopyWith<$Res> {
  factory $DaftarDriverImageResponseCopyWith(DaftarDriverImageResponse value,
          $Res Function(DaftarDriverImageResponse) then) =
      _$DaftarDriverImageResponseCopyWithImpl<$Res, DaftarDriverImageResponse>;
  @useResult
  $Res call({String image, String fotoKtp, String fotoMobil});
}

/// @nodoc
class _$DaftarDriverImageResponseCopyWithImpl<$Res,
        $Val extends DaftarDriverImageResponse>
    implements $DaftarDriverImageResponseCopyWith<$Res> {
  _$DaftarDriverImageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? fotoKtp = null,
    Object? fotoMobil = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      fotoKtp: null == fotoKtp
          ? _value.fotoKtp
          : fotoKtp // ignore: cast_nullable_to_non_nullable
              as String,
      fotoMobil: null == fotoMobil
          ? _value.fotoMobil
          : fotoMobil // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DaftarDriverImageResponseCopyWith<$Res>
    implements $DaftarDriverImageResponseCopyWith<$Res> {
  factory _$$_DaftarDriverImageResponseCopyWith(
          _$_DaftarDriverImageResponse value,
          $Res Function(_$_DaftarDriverImageResponse) then) =
      __$$_DaftarDriverImageResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String fotoKtp, String fotoMobil});
}

/// @nodoc
class __$$_DaftarDriverImageResponseCopyWithImpl<$Res>
    extends _$DaftarDriverImageResponseCopyWithImpl<$Res,
        _$_DaftarDriverImageResponse>
    implements _$$_DaftarDriverImageResponseCopyWith<$Res> {
  __$$_DaftarDriverImageResponseCopyWithImpl(
      _$_DaftarDriverImageResponse _value,
      $Res Function(_$_DaftarDriverImageResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? fotoKtp = null,
    Object? fotoMobil = null,
  }) {
    return _then(_$_DaftarDriverImageResponse(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      fotoKtp: null == fotoKtp
          ? _value.fotoKtp
          : fotoKtp // ignore: cast_nullable_to_non_nullable
              as String,
      fotoMobil: null == fotoMobil
          ? _value.fotoMobil
          : fotoMobil // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DaftarDriverImageResponse implements _DaftarDriverImageResponse {
  const _$_DaftarDriverImageResponse(
      {required this.image, required this.fotoKtp, required this.fotoMobil});

  @override
  final String image;
  @override
  final String fotoKtp;
  @override
  final String fotoMobil;

  @override
  String toString() {
    return 'DaftarDriverImageResponse(image: $image, fotoKtp: $fotoKtp, fotoMobil: $fotoMobil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaftarDriverImageResponse &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.fotoKtp, fotoKtp) || other.fotoKtp == fotoKtp) &&
            (identical(other.fotoMobil, fotoMobil) ||
                other.fotoMobil == fotoMobil));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, fotoKtp, fotoMobil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DaftarDriverImageResponseCopyWith<_$_DaftarDriverImageResponse>
      get copyWith => __$$_DaftarDriverImageResponseCopyWithImpl<
          _$_DaftarDriverImageResponse>(this, _$identity);
}

abstract class _DaftarDriverImageResponse implements DaftarDriverImageResponse {
  const factory _DaftarDriverImageResponse(
      {required final String image,
      required final String fotoKtp,
      required final String fotoMobil}) = _$_DaftarDriverImageResponse;

  @override
  String get image;
  @override
  String get fotoKtp;
  @override
  String get fotoMobil;
  @override
  @JsonKey(ignore: true)
  _$$_DaftarDriverImageResponseCopyWith<_$_DaftarDriverImageResponse>
      get copyWith => throw _privateConstructorUsedError;
}
