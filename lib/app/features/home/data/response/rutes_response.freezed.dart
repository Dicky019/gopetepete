// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rutes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RutesResponse _$RutesResponseFromJson(Map<String, dynamic> json) {
  return _RutesResponse.fromJson(json);
}

/// @nodoc
mixin _$RutesResponse {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<RuteResponse>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RutesResponseCopyWith<RutesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RutesResponseCopyWith<$Res> {
  factory $RutesResponseCopyWith(
          RutesResponse value, $Res Function(RutesResponse) then) =
      _$RutesResponseCopyWithImpl<$Res, RutesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "data") List<RuteResponse>? data});
}

/// @nodoc
class _$RutesResponseCopyWithImpl<$Res, $Val extends RutesResponse>
    implements $RutesResponseCopyWith<$Res> {
  _$RutesResponseCopyWithImpl(this._value, this._then);

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
              as List<RuteResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RutesResponseImplCopyWith<$Res>
    implements $RutesResponseCopyWith<$Res> {
  factory _$$RutesResponseImplCopyWith(
          _$RutesResponseImpl value, $Res Function(_$RutesResponseImpl) then) =
      __$$RutesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "data") List<RuteResponse>? data});
}

/// @nodoc
class __$$RutesResponseImplCopyWithImpl<$Res>
    extends _$RutesResponseCopyWithImpl<$Res, _$RutesResponseImpl>
    implements _$$RutesResponseImplCopyWith<$Res> {
  __$$RutesResponseImplCopyWithImpl(
      _$RutesResponseImpl _value, $Res Function(_$RutesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RutesResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RuteResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RutesResponseImpl implements _RutesResponse {
  const _$RutesResponseImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "data") final List<RuteResponse>? data})
      : _data = data;

  factory _$RutesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RutesResponseImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  final List<RuteResponse>? _data;
  @override
  @JsonKey(name: "data")
  List<RuteResponse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RutesResponse(code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RutesResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RutesResponseImplCopyWith<_$RutesResponseImpl> get copyWith =>
      __$$RutesResponseImplCopyWithImpl<_$RutesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RutesResponseImplToJson(
      this,
    );
  }
}

abstract class _RutesResponse implements RutesResponse {
  const factory _RutesResponse(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "data") final List<RuteResponse>? data}) =
      _$RutesResponseImpl;

  factory _RutesResponse.fromJson(Map<String, dynamic> json) =
      _$RutesResponseImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "data")
  List<RuteResponse>? get data;
  @override
  @JsonKey(ignore: true)
  _$$RutesResponseImplCopyWith<_$RutesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
