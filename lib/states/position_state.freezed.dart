// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'position_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PositionStateTearOff {
  const _$PositionStateTearOff();

  _PositionState call({Position? position}) {
    return _PositionState(
      position: position,
    );
  }
}

/// @nodoc
const $PositionState = _$PositionStateTearOff();

/// @nodoc
mixin _$PositionState {
  Position? get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionStateCopyWith<PositionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionStateCopyWith<$Res> {
  factory $PositionStateCopyWith(
          PositionState value, $Res Function(PositionState) then) =
      _$PositionStateCopyWithImpl<$Res>;
  $Res call({Position? position});
}

/// @nodoc
class _$PositionStateCopyWithImpl<$Res>
    implements $PositionStateCopyWith<$Res> {
  _$PositionStateCopyWithImpl(this._value, this._then);

  final PositionState _value;
  // ignore: unused_field
  final $Res Function(PositionState) _then;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc
abstract class _$PositionStateCopyWith<$Res>
    implements $PositionStateCopyWith<$Res> {
  factory _$PositionStateCopyWith(
          _PositionState value, $Res Function(_PositionState) then) =
      __$PositionStateCopyWithImpl<$Res>;
  @override
  $Res call({Position? position});
}

/// @nodoc
class __$PositionStateCopyWithImpl<$Res>
    extends _$PositionStateCopyWithImpl<$Res>
    implements _$PositionStateCopyWith<$Res> {
  __$PositionStateCopyWithImpl(
      _PositionState _value, $Res Function(_PositionState) _then)
      : super(_value, (v) => _then(v as _PositionState));

  @override
  _PositionState get _value => super._value as _PositionState;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_PositionState(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc
class _$_PositionState extends _PositionState {
  _$_PositionState({this.position}) : super._();

  @override
  final Position? position;

  @override
  String toString() {
    return 'PositionState(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PositionState &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$PositionStateCopyWith<_PositionState> get copyWith =>
      __$PositionStateCopyWithImpl<_PositionState>(this, _$identity);
}

abstract class _PositionState extends PositionState {
  factory _PositionState({Position? position}) = _$_PositionState;
  _PositionState._() : super._();

  @override
  Position? get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PositionStateCopyWith<_PositionState> get copyWith =>
      throw _privateConstructorUsedError;
}
