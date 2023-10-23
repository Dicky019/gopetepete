// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rute_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RuteResponse _$RuteResponseFromJson(Map<String, dynamic> json) {
  return _RuteResponse.fromJson(json);
}

/// @nodoc
mixin _$RuteResponse {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "kode")
  String? get kode => throw _privateConstructorUsedError;
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "locations")
  List<LocationsResponse>? get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RuteResponseCopyWith<RuteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuteResponseCopyWith<$Res> {
  factory $RuteResponseCopyWith(
          RuteResponse value, $Res Function(RuteResponse) then) =
      _$RuteResponseCopyWithImpl<$Res, RuteResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "updatedAt") String? updatedAt,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "kode") String? kode,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "locations") List<LocationsResponse>? locations});
}

/// @nodoc
class _$RuteResponseCopyWithImpl<$Res, $Val extends RuteResponse>
    implements $RuteResponseCopyWith<$Res> {
  _$RuteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? kode = freezed,
    Object? color = freezed,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationsResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuteResponseImplCopyWith<$Res>
    implements $RuteResponseCopyWith<$Res> {
  factory _$$RuteResponseImplCopyWith(
          _$RuteResponseImpl value, $Res Function(_$RuteResponseImpl) then) =
      __$$RuteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "updatedAt") String? updatedAt,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "kode") String? kode,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "locations") List<LocationsResponse>? locations});
}

/// @nodoc
class __$$RuteResponseImplCopyWithImpl<$Res>
    extends _$RuteResponseCopyWithImpl<$Res, _$RuteResponseImpl>
    implements _$$RuteResponseImplCopyWith<$Res> {
  __$$RuteResponseImplCopyWithImpl(
      _$RuteResponseImpl _value, $Res Function(_$RuteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? kode = freezed,
    Object? color = freezed,
    Object? locations = freezed,
  }) {
    return _then(_$RuteResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RuteResponseImpl implements _RuteResponse {
  const _$RuteResponseImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "kode") this.kode,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "locations") final List<LocationsResponse>? locations})
      : _locations = locations;

  factory _$RuteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RuteResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final String? updatedAt;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "kode")
  final String? kode;
  @override
  @JsonKey(name: "color")
  final String? color;
  final List<LocationsResponse>? _locations;
  @override
  @JsonKey(name: "locations")
  List<LocationsResponse>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RuteResponse(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, kode: $kode, color: $color, locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuteResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, name,
      kode, color, const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RuteResponseImplCopyWith<_$RuteResponseImpl> get copyWith =>
      __$$RuteResponseImplCopyWithImpl<_$RuteResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RuteResponseImplToJson(
      this,
    );
  }
}

abstract class _RuteResponse implements RuteResponse {
  const factory _RuteResponse(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "createdAt") final String? createdAt,
      @JsonKey(name: "updatedAt") final String? updatedAt,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "kode") final String? kode,
      @JsonKey(name: "color") final String? color,
      @JsonKey(name: "locations")
      final List<LocationsResponse>? locations}) = _$RuteResponseImpl;

  factory _RuteResponse.fromJson(Map<String, dynamic> json) =
      _$RuteResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "createdAt")
  String? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String? get updatedAt;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "kode")
  String? get kode;
  @override
  @JsonKey(name: "color")
  String? get color;
  @override
  @JsonKey(name: "locations")
  List<LocationsResponse>? get locations;
  @override
  @JsonKey(ignore: true)
  _$$RuteResponseImplCopyWith<_$RuteResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationsResponse _$LocationsResponseFromJson(Map<String, dynamic> json) {
  return _LocationsResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationsResponse {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "latAwal")
  String? get latAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "longAwal")
  String? get longAwal => throw _privateConstructorUsedError;
  @JsonKey(name: "latAkhir")
  String? get latAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: "longAkhir")
  String? get longAkhir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsResponseCopyWith<LocationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsResponseCopyWith<$Res> {
  factory $LocationsResponseCopyWith(
          LocationsResponse value, $Res Function(LocationsResponse) then) =
      _$LocationsResponseCopyWithImpl<$Res, LocationsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "latAwal") String? latAwal,
      @JsonKey(name: "longAwal") String? longAwal,
      @JsonKey(name: "latAkhir") String? latAkhir,
      @JsonKey(name: "longAkhir") String? longAkhir});
}

/// @nodoc
class _$LocationsResponseCopyWithImpl<$Res, $Val extends LocationsResponse>
    implements $LocationsResponseCopyWith<$Res> {
  _$LocationsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? latAwal = freezed,
    Object? longAwal = freezed,
    Object? latAkhir = freezed,
    Object? longAkhir = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      latAwal: freezed == latAwal
          ? _value.latAwal
          : latAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      longAwal: freezed == longAwal
          ? _value.longAwal
          : longAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      latAkhir: freezed == latAkhir
          ? _value.latAkhir
          : latAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
      longAkhir: freezed == longAkhir
          ? _value.longAkhir
          : longAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationsResponseImplCopyWith<$Res>
    implements $LocationsResponseCopyWith<$Res> {
  factory _$$LocationsResponseImplCopyWith(_$LocationsResponseImpl value,
          $Res Function(_$LocationsResponseImpl) then) =
      __$$LocationsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "latAwal") String? latAwal,
      @JsonKey(name: "longAwal") String? longAwal,
      @JsonKey(name: "latAkhir") String? latAkhir,
      @JsonKey(name: "longAkhir") String? longAkhir});
}

/// @nodoc
class __$$LocationsResponseImplCopyWithImpl<$Res>
    extends _$LocationsResponseCopyWithImpl<$Res, _$LocationsResponseImpl>
    implements _$$LocationsResponseImplCopyWith<$Res> {
  __$$LocationsResponseImplCopyWithImpl(_$LocationsResponseImpl _value,
      $Res Function(_$LocationsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? latAwal = freezed,
    Object? longAwal = freezed,
    Object? latAkhir = freezed,
    Object? longAkhir = freezed,
  }) {
    return _then(_$LocationsResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      latAwal: freezed == latAwal
          ? _value.latAwal
          : latAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      longAwal: freezed == longAwal
          ? _value.longAwal
          : longAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      latAkhir: freezed == latAkhir
          ? _value.latAkhir
          : latAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
      longAkhir: freezed == longAkhir
          ? _value.longAkhir
          : longAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationsResponseImpl implements _LocationsResponse {
  const _$LocationsResponseImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "latAwal") this.latAwal,
      @JsonKey(name: "longAwal") this.longAwal,
      @JsonKey(name: "latAkhir") this.latAkhir,
      @JsonKey(name: "longAkhir") this.longAkhir});

  factory _$LocationsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationsResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "latAwal")
  final String? latAwal;
  @override
  @JsonKey(name: "longAwal")
  final String? longAwal;
  @override
  @JsonKey(name: "latAkhir")
  final String? latAkhir;
  @override
  @JsonKey(name: "longAkhir")
  final String? longAkhir;

  @override
  String toString() {
    return 'LocationsResponse(id: $id, latAwal: $latAwal, longAwal: $longAwal, latAkhir: $latAkhir, longAkhir: $longAkhir)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latAwal, latAwal) || other.latAwal == latAwal) &&
            (identical(other.longAwal, longAwal) ||
                other.longAwal == longAwal) &&
            (identical(other.latAkhir, latAkhir) ||
                other.latAkhir == latAkhir) &&
            (identical(other.longAkhir, longAkhir) ||
                other.longAkhir == longAkhir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, latAwal, longAwal, latAkhir, longAkhir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsResponseImplCopyWith<_$LocationsResponseImpl> get copyWith =>
      __$$LocationsResponseImplCopyWithImpl<_$LocationsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationsResponseImplToJson(
      this,
    );
  }
}

abstract class _LocationsResponse implements LocationsResponse {
  const factory _LocationsResponse(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "latAwal") final String? latAwal,
          @JsonKey(name: "longAwal") final String? longAwal,
          @JsonKey(name: "latAkhir") final String? latAkhir,
          @JsonKey(name: "longAkhir") final String? longAkhir}) =
      _$LocationsResponseImpl;

  factory _LocationsResponse.fromJson(Map<String, dynamic> json) =
      _$LocationsResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "latAwal")
  String? get latAwal;
  @override
  @JsonKey(name: "longAwal")
  String? get longAwal;
  @override
  @JsonKey(name: "latAkhir")
  String? get latAkhir;
  @override
  @JsonKey(name: "longAkhir")
  String? get longAkhir;
  @override
  @JsonKey(ignore: true)
  _$$LocationsResponseImplCopyWith<_$LocationsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
