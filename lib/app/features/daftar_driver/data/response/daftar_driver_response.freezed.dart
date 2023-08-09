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

DaftarDriverResponse _$DaftarDriverResponseFromJson(Map<String, dynamic> json) {
  return _DaftarDriverResponse.fromJson(json);
}

/// @nodoc
mixin _$DaftarDriverResponse {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DaftarDriverData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaftarDriverResponseCopyWith<DaftarDriverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaftarDriverResponseCopyWith<$Res> {
  factory $DaftarDriverResponseCopyWith(DaftarDriverResponse value,
          $Res Function(DaftarDriverResponse) then) =
      _$DaftarDriverResponseCopyWithImpl<$Res, DaftarDriverResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "data") DaftarDriverData? data});

  $DaftarDriverDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DaftarDriverResponseCopyWithImpl<$Res,
        $Val extends DaftarDriverResponse>
    implements $DaftarDriverResponseCopyWith<$Res> {
  _$DaftarDriverResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DaftarDriverData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DaftarDriverDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DaftarDriverDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DaftarDriverResponseCopyWith<$Res>
    implements $DaftarDriverResponseCopyWith<$Res> {
  factory _$$_DaftarDriverResponseCopyWith(_$_DaftarDriverResponse value,
          $Res Function(_$_DaftarDriverResponse) then) =
      __$$_DaftarDriverResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "data") DaftarDriverData? data});

  @override
  $DaftarDriverDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DaftarDriverResponseCopyWithImpl<$Res>
    extends _$DaftarDriverResponseCopyWithImpl<$Res, _$_DaftarDriverResponse>
    implements _$$_DaftarDriverResponseCopyWith<$Res> {
  __$$_DaftarDriverResponseCopyWithImpl(_$_DaftarDriverResponse _value,
      $Res Function(_$_DaftarDriverResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DaftarDriverResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DaftarDriverData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DaftarDriverResponse implements _DaftarDriverResponse {
  const _$_DaftarDriverResponse(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "data") required this.data});

  factory _$_DaftarDriverResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DaftarDriverResponseFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "data")
  final DaftarDriverData? data;

  @override
  String toString() {
    return 'DaftarDriverResponse(code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaftarDriverResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DaftarDriverResponseCopyWith<_$_DaftarDriverResponse> get copyWith =>
      __$$_DaftarDriverResponseCopyWithImpl<_$_DaftarDriverResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DaftarDriverResponseToJson(
      this,
    );
  }
}

abstract class _DaftarDriverResponse implements DaftarDriverResponse {
  const factory _DaftarDriverResponse(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "data") required final DaftarDriverData? data}) =
      _$_DaftarDriverResponse;

  factory _DaftarDriverResponse.fromJson(Map<String, dynamic> json) =
      _$_DaftarDriverResponse.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "data")
  DaftarDriverData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DaftarDriverResponseCopyWith<_$_DaftarDriverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DaftarDriverData _$DaftarDriverDataFromJson(Map<String, dynamic> json) {
  return _DaftarDriverData.fromJson(json);
}

/// @nodoc
mixin _$DaftarDriverData {
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
  @JsonKey(name: "latAwal")
  String? get latAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "longAwal")
  String? get longAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "accessToken")
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  UserResponse? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaftarDriverDataCopyWith<DaftarDriverData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaftarDriverDataCopyWith<$Res> {
  factory $DaftarDriverDataCopyWith(
          DaftarDriverData value, $Res Function(DaftarDriverData) then) =
      _$DaftarDriverDataCopyWithImpl<$Res, DaftarDriverData>;
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
      @JsonKey(name: "latAwal") String? latAwal,
      @JsonKey(name: "longAwal") String? longAwal,
      @JsonKey(name: "accessToken") String? accessToken,
      @JsonKey(name: "user") UserResponse? user});

  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$DaftarDriverDataCopyWithImpl<$Res, $Val extends DaftarDriverData>
    implements $DaftarDriverDataCopyWith<$Res> {
  _$DaftarDriverDataCopyWithImpl(this._value, this._then);

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
    Object? latAwal = freezed,
    Object? longAwal = freezed,
    Object? accessToken = freezed,
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
      latAwal: freezed == latAwal
          ? _value.latAwal
          : latAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      longAwal: freezed == longAwal
          ? _value.longAwal
          : longAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DaftarDriverDataCopyWith<$Res>
    implements $DaftarDriverDataCopyWith<$Res> {
  factory _$$_DaftarDriverDataCopyWith(
          _$_DaftarDriverData value, $Res Function(_$_DaftarDriverData) then) =
      __$$_DaftarDriverDataCopyWithImpl<$Res>;
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
      @JsonKey(name: "latAwal") String? latAwal,
      @JsonKey(name: "longAwal") String? longAwal,
      @JsonKey(name: "accessToken") String? accessToken,
      @JsonKey(name: "user") UserResponse? user});

  @override
  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_DaftarDriverDataCopyWithImpl<$Res>
    extends _$DaftarDriverDataCopyWithImpl<$Res, _$_DaftarDriverData>
    implements _$$_DaftarDriverDataCopyWith<$Res> {
  __$$_DaftarDriverDataCopyWithImpl(
      _$_DaftarDriverData _value, $Res Function(_$_DaftarDriverData) _then)
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
    Object? latAwal = freezed,
    Object? longAwal = freezed,
    Object? accessToken = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_DaftarDriverData(
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
      latAwal: freezed == latAwal
          ? _value.latAwal
          : latAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      longAwal: freezed == longAwal
          ? _value.longAwal
          : longAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
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
class _$_DaftarDriverData implements _DaftarDriverData {
  const _$_DaftarDriverData(
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
      @JsonKey(name: "latAwal") this.latAwal,
      @JsonKey(name: "longAwal") this.longAwal,
      @JsonKey(name: "accessToken") this.accessToken,
      @JsonKey(name: "user") this.user});

  factory _$_DaftarDriverData.fromJson(Map<String, dynamic> json) =>
      _$$_DaftarDriverDataFromJson(json);

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
  @JsonKey(name: "latAwal")
  final String? latAwal;
  @override
  @JsonKey(name: "longAwal")
  final String? longAwal;
  @override
  @JsonKey(name: "accessToken")
  final String? accessToken;
  @override
  @JsonKey(name: "user")
  final UserResponse? user;

  @override
  String toString() {
    return 'DaftarDriverData(id: $id, namaLengkap: $namaLengkap, alamat: $alamat, nik: $nik, nokk: $nokk, noHp: $noHp, noPlatMobil: $noPlatMobil, maxPenumpang: $maxPenumpang, fotoKtp: $fotoKtp, fotoMobil: $fotoMobil, latAwal: $latAwal, longAwal: $longAwal, accessToken: $accessToken, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaftarDriverData &&
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
            (identical(other.latAwal, latAwal) || other.latAwal == latAwal) &&
            (identical(other.longAwal, longAwal) ||
                other.longAwal == longAwal) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      namaLengkap,
      alamat,
      nik,
      nokk,
      noHp,
      noPlatMobil,
      maxPenumpang,
      fotoKtp,
      fotoMobil,
      latAwal,
      longAwal,
      accessToken,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DaftarDriverDataCopyWith<_$_DaftarDriverData> get copyWith =>
      __$$_DaftarDriverDataCopyWithImpl<_$_DaftarDriverData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DaftarDriverDataToJson(
      this,
    );
  }
}

abstract class _DaftarDriverData implements DaftarDriverData {
  const factory _DaftarDriverData(
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
      @JsonKey(name: "latAwal") final String? latAwal,
      @JsonKey(name: "longAwal") final String? longAwal,
      @JsonKey(name: "accessToken") final String? accessToken,
      @JsonKey(name: "user") final UserResponse? user}) = _$_DaftarDriverData;

  factory _DaftarDriverData.fromJson(Map<String, dynamic> json) =
      _$_DaftarDriverData.fromJson;

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
  @JsonKey(name: "latAwal")
  String? get latAwal;
  @override
  @JsonKey(name: "longAwal")
  String? get longAwal;
  @override
  @JsonKey(name: "accessToken")
  String? get accessToken;
  @override
  @JsonKey(name: "user")
  UserResponse? get user;
  @override
  @JsonKey(ignore: true)
  _$$_DaftarDriverDataCopyWith<_$_DaftarDriverData> get copyWith =>
      throw _privateConstructorUsedError;
}
