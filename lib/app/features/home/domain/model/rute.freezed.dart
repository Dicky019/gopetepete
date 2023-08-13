// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Rute {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get kode => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  Polyline get locations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RuteCopyWith<Rute> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuteCopyWith<$Res> {
  factory $RuteCopyWith(Rute value, $Res Function(Rute) then) =
      _$RuteCopyWithImpl<$Res, Rute>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String name,
      String kode,
      String color,
      Polyline locations});
}

/// @nodoc
class _$RuteCopyWithImpl<$Res, $Val extends Rute>
    implements $RuteCopyWith<$Res> {
  _$RuteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? name = null,
    Object? kode = null,
    Object? color = null,
    Object? locations = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kode: null == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as Polyline,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RuteCopyWith<$Res> implements $RuteCopyWith<$Res> {
  factory _$$_RuteCopyWith(_$_Rute value, $Res Function(_$_Rute) then) =
      __$$_RuteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String name,
      String kode,
      String color,
      Polyline locations});
}

/// @nodoc
class __$$_RuteCopyWithImpl<$Res> extends _$RuteCopyWithImpl<$Res, _$_Rute>
    implements _$$_RuteCopyWith<$Res> {
  __$$_RuteCopyWithImpl(_$_Rute _value, $Res Function(_$_Rute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? name = null,
    Object? kode = null,
    Object? color = null,
    Object? locations = null,
  }) {
    return _then(_$_Rute(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kode: null == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as Polyline,
    ));
  }
}

/// @nodoc

class _$_Rute implements _Rute {
  const _$_Rute(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.name,
      required this.kode,
      required this.color,
      required this.locations});

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String name;
  @override
  final String kode;
  @override
  final String color;
  @override
  final Polyline locations;

  @override
  String toString() {
    return 'Rute(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, kode: $kode, color: $color, locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rute &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.locations, locations) ||
                other.locations == locations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, updatedAt, name, kode, color, locations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RuteCopyWith<_$_Rute> get copyWith =>
      __$$_RuteCopyWithImpl<_$_Rute>(this, _$identity);
}

abstract class _Rute implements Rute {
  const factory _Rute(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String name,
      required final String kode,
      required final String color,
      required final Polyline locations}) = _$_Rute;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get name;
  @override
  String get kode;
  @override
  String get color;
  @override
  Polyline get locations;
  @override
  @JsonKey(ignore: true)
  _$$_RuteCopyWith<_$_Rute> get copyWith => throw _privateConstructorUsedError;
}
