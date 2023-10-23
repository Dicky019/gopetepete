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

DriverResponse _$DriverResponseFromJson(Map<String, dynamic> json) {
  return _DriverResponse.fromJson(json);
}

/// @nodoc
mixin _$DriverResponse {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "namaLengkap")
  String? get namaLengkap => throw _privateConstructorUsedError;
  @JsonKey(name: "alamat")
  String? get alamat => throw _privateConstructorUsedError;
  @JsonKey(name: "nik")
  String? get nik => throw _privateConstructorUsedError;
  @JsonKey(name: "nokk")
  String? get nokk => throw _privateConstructorUsedError;
  @JsonKey(name: "noHp")
  String? get noHp => throw _privateConstructorUsedError;
  @JsonKey(name: "noPlatMobil")
  String? get noPlatMobil => throw _privateConstructorUsedError;
  @JsonKey(name: "maxPenumpang")
  int? get maxPenumpang => throw _privateConstructorUsedError;
  @JsonKey(name: "fotoKtp")
  String? get fotoKtp => throw _privateConstructorUsedError;
  @JsonKey(name: "fotoMobil")
  String? get fotoMobil => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  UserResponse? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverResponseCopyWith<DriverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverResponseCopyWith<$Res> {
  factory $DriverResponseCopyWith(
          DriverResponse value, $Res Function(DriverResponse) then) =
      _$DriverResponseCopyWithImpl<$Res, DriverResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "namaLengkap") String? namaLengkap,
      @JsonKey(name: "alamat") String? alamat,
      @JsonKey(name: "nik") String? nik,
      @JsonKey(name: "nokk") String? nokk,
      @JsonKey(name: "noHp") String? noHp,
      @JsonKey(name: "noPlatMobil") String? noPlatMobil,
      @JsonKey(name: "maxPenumpang") int? maxPenumpang,
      @JsonKey(name: "fotoKtp") String? fotoKtp,
      @JsonKey(name: "fotoMobil") String? fotoMobil,
      @JsonKey(name: "user") UserResponse? user});

  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$DriverResponseCopyWithImpl<$Res, $Val extends DriverResponse>
    implements $DriverResponseCopyWith<$Res> {
  _$DriverResponseCopyWithImpl(this._value, this._then);

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
    Object? nik = freezed,
    Object? nokk = freezed,
    Object? noHp = freezed,
    Object? noPlatMobil = freezed,
    Object? maxPenumpang = freezed,
    Object? fotoKtp = freezed,
    Object? fotoMobil = freezed,
    Object? user = freezed,
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
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      nokk: freezed == nokk
          ? _value.nokk
          : nokk // ignore: cast_nullable_to_non_nullable
              as String?,
      noHp: freezed == noHp
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
              as String?,
      noPlatMobil: freezed == noPlatMobil
          ? _value.noPlatMobil
          : noPlatMobil // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPenumpang: freezed == maxPenumpang
          ? _value.maxPenumpang
          : maxPenumpang // ignore: cast_nullable_to_non_nullable
              as int?,
      fotoKtp: freezed == fotoKtp
          ? _value.fotoKtp
          : fotoKtp // ignore: cast_nullable_to_non_nullable
              as String?,
      fotoMobil: freezed == fotoMobil
          ? _value.fotoMobil
          : fotoMobil // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverResponseImplCopyWith<$Res>
    implements $DriverResponseCopyWith<$Res> {
  factory _$$DriverResponseImplCopyWith(_$DriverResponseImpl value,
          $Res Function(_$DriverResponseImpl) then) =
      __$$DriverResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "namaLengkap") String? namaLengkap,
      @JsonKey(name: "alamat") String? alamat,
      @JsonKey(name: "nik") String? nik,
      @JsonKey(name: "nokk") String? nokk,
      @JsonKey(name: "noHp") String? noHp,
      @JsonKey(name: "noPlatMobil") String? noPlatMobil,
      @JsonKey(name: "maxPenumpang") int? maxPenumpang,
      @JsonKey(name: "fotoKtp") String? fotoKtp,
      @JsonKey(name: "fotoMobil") String? fotoMobil,
      @JsonKey(name: "user") UserResponse? user});

  @override
  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$$DriverResponseImplCopyWithImpl<$Res>
    extends _$DriverResponseCopyWithImpl<$Res, _$DriverResponseImpl>
    implements _$$DriverResponseImplCopyWith<$Res> {
  __$$DriverResponseImplCopyWithImpl(
      _$DriverResponseImpl _value, $Res Function(_$DriverResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaLengkap = freezed,
    Object? alamat = freezed,
    Object? nik = freezed,
    Object? nokk = freezed,
    Object? noHp = freezed,
    Object? noPlatMobil = freezed,
    Object? maxPenumpang = freezed,
    Object? fotoKtp = freezed,
    Object? fotoMobil = freezed,
    Object? user = freezed,
  }) {
    return _then(_$DriverResponseImpl(
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
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      nokk: freezed == nokk
          ? _value.nokk
          : nokk // ignore: cast_nullable_to_non_nullable
              as String?,
      noHp: freezed == noHp
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
              as String?,
      noPlatMobil: freezed == noPlatMobil
          ? _value.noPlatMobil
          : noPlatMobil // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPenumpang: freezed == maxPenumpang
          ? _value.maxPenumpang
          : maxPenumpang // ignore: cast_nullable_to_non_nullable
              as int?,
      fotoKtp: freezed == fotoKtp
          ? _value.fotoKtp
          : fotoKtp // ignore: cast_nullable_to_non_nullable
              as String?,
      fotoMobil: freezed == fotoMobil
          ? _value.fotoMobil
          : fotoMobil // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverResponseImpl implements _DriverResponse {
  const _$DriverResponseImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "namaLengkap") this.namaLengkap,
      @JsonKey(name: "alamat") this.alamat,
      @JsonKey(name: "nik") this.nik,
      @JsonKey(name: "nokk") this.nokk,
      @JsonKey(name: "noHp") this.noHp,
      @JsonKey(name: "noPlatMobil") this.noPlatMobil,
      @JsonKey(name: "maxPenumpang") this.maxPenumpang,
      @JsonKey(name: "fotoKtp") this.fotoKtp,
      @JsonKey(name: "fotoMobil") this.fotoMobil,
      @JsonKey(name: "user") this.user});

  factory _$DriverResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "namaLengkap")
  final String? namaLengkap;
  @override
  @JsonKey(name: "alamat")
  final String? alamat;
  @override
  @JsonKey(name: "nik")
  final String? nik;
  @override
  @JsonKey(name: "nokk")
  final String? nokk;
  @override
  @JsonKey(name: "noHp")
  final String? noHp;
  @override
  @JsonKey(name: "noPlatMobil")
  final String? noPlatMobil;
  @override
  @JsonKey(name: "maxPenumpang")
  final int? maxPenumpang;
  @override
  @JsonKey(name: "fotoKtp")
  final String? fotoKtp;
  @override
  @JsonKey(name: "fotoMobil")
  final String? fotoMobil;
  @override
  @JsonKey(name: "user")
  final UserResponse? user;

  @override
  String toString() {
    return 'DriverResponse(id: $id, namaLengkap: $namaLengkap, alamat: $alamat, nik: $nik, nokk: $nokk, noHp: $noHp, noPlatMobil: $noPlatMobil, maxPenumpang: $maxPenumpang, fotoKtp: $fotoKtp, fotoMobil: $fotoMobil, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaLengkap, namaLengkap) ||
                other.namaLengkap == namaLengkap) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.nokk, nokk) || other.nokk == nokk) &&
            (identical(other.noHp, noHp) || other.noHp == noHp) &&
            (identical(other.noPlatMobil, noPlatMobil) ||
                other.noPlatMobil == noPlatMobil) &&
            (identical(other.maxPenumpang, maxPenumpang) ||
                other.maxPenumpang == maxPenumpang) &&
            (identical(other.fotoKtp, fotoKtp) || other.fotoKtp == fotoKtp) &&
            (identical(other.fotoMobil, fotoMobil) ||
                other.fotoMobil == fotoMobil) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, namaLengkap, alamat, nik,
      nokk, noHp, noPlatMobil, maxPenumpang, fotoKtp, fotoMobil, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverResponseImplCopyWith<_$DriverResponseImpl> get copyWith =>
      __$$DriverResponseImplCopyWithImpl<_$DriverResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverResponseImplToJson(
      this,
    );
  }
}

abstract class _DriverResponse implements DriverResponse {
  const factory _DriverResponse(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "namaLengkap") final String? namaLengkap,
      @JsonKey(name: "alamat") final String? alamat,
      @JsonKey(name: "nik") final String? nik,
      @JsonKey(name: "nokk") final String? nokk,
      @JsonKey(name: "noHp") final String? noHp,
      @JsonKey(name: "noPlatMobil") final String? noPlatMobil,
      @JsonKey(name: "maxPenumpang") final int? maxPenumpang,
      @JsonKey(name: "fotoKtp") final String? fotoKtp,
      @JsonKey(name: "fotoMobil") final String? fotoMobil,
      @JsonKey(name: "user") final UserResponse? user}) = _$DriverResponseImpl;

  factory _DriverResponse.fromJson(Map<String, dynamic> json) =
      _$DriverResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "namaLengkap")
  String? get namaLengkap;
  @override
  @JsonKey(name: "alamat")
  String? get alamat;
  @override
  @JsonKey(name: "nik")
  String? get nik;
  @override
  @JsonKey(name: "nokk")
  String? get nokk;
  @override
  @JsonKey(name: "noHp")
  String? get noHp;
  @override
  @JsonKey(name: "noPlatMobil")
  String? get noPlatMobil;
  @override
  @JsonKey(name: "maxPenumpang")
  int? get maxPenumpang;
  @override
  @JsonKey(name: "fotoKtp")
  String? get fotoKtp;
  @override
  @JsonKey(name: "fotoMobil")
  String? get fotoMobil;
  @override
  @JsonKey(name: "user")
  UserResponse? get user;
  @override
  @JsonKey(ignore: true)
  _$$DriverResponseImplCopyWith<_$DriverResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
