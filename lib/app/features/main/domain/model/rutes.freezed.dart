// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rutes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Rutes {
  String get code => throw _privateConstructorUsedError;
  List<Rute> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RutesCopyWith<Rutes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RutesCopyWith<$Res> {
  factory $RutesCopyWith(Rutes value, $Res Function(Rutes) then) =
      _$RutesCopyWithImpl<$Res, Rutes>;
  @useResult
  $Res call({String code, List<Rute> data});
}

/// @nodoc
class _$RutesCopyWithImpl<$Res, $Val extends Rutes>
    implements $RutesCopyWith<$Res> {
  _$RutesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Rute>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RutesCopyWith<$Res> implements $RutesCopyWith<$Res> {
  factory _$$_RutesCopyWith(_$_Rutes value, $Res Function(_$_Rutes) then) =
      __$$_RutesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, List<Rute> data});
}

/// @nodoc
class __$$_RutesCopyWithImpl<$Res> extends _$RutesCopyWithImpl<$Res, _$_Rutes>
    implements _$$_RutesCopyWith<$Res> {
  __$$_RutesCopyWithImpl(_$_Rutes _value, $Res Function(_$_Rutes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$_Rutes(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Rute>,
    ));
  }
}

/// @nodoc

class _$_Rutes implements _Rutes {
  const _$_Rutes({required this.code, required final List<Rute> data})
      : _data = data;

  @override
  final String code;
  final List<Rute> _data;
  @override
  List<Rute> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Rutes(code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rutes &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, code, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RutesCopyWith<_$_Rutes> get copyWith =>
      __$$_RutesCopyWithImpl<_$_Rutes>(this, _$identity);
}

abstract class _Rutes implements Rutes {
  const factory _Rutes(
      {required final String code, required final List<Rute> data}) = _$_Rutes;

  @override
  String get code;
  @override
  List<Rute> get data;
  @override
  @JsonKey(ignore: true)
  _$$_RutesCopyWith<_$_Rutes> get copyWith =>
      throw _privateConstructorUsedError;
}
