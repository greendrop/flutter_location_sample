// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationState call({LocationData? locationData}) {
    return _LocationState(
      locationData: locationData,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  LocationData? get locationData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call({LocationData? locationData});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object? locationData = freezed,
  }) {
    return _then(_value.copyWith(
      locationData: locationData == freezed
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData?,
    ));
  }
}

/// @nodoc
abstract class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) then) =
      __$LocationStateCopyWithImpl<$Res>;
  @override
  $Res call({LocationData? locationData});
}

/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(
      _LocationState _value, $Res Function(_LocationState) _then)
      : super(_value, (v) => _then(v as _LocationState));

  @override
  _LocationState get _value => super._value as _LocationState;

  @override
  $Res call({
    Object? locationData = freezed,
  }) {
    return _then(_LocationState(
      locationData: locationData == freezed
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData?,
    ));
  }
}

/// @nodoc
class _$_LocationState extends _LocationState {
  _$_LocationState({this.locationData}) : super._();

  @override
  final LocationData? locationData;

  @override
  String toString() {
    return 'LocationState(locationData: $locationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationState &&
            (identical(other.locationData, locationData) ||
                const DeepCollectionEquality()
                    .equals(other.locationData, locationData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationData);

  @JsonKey(ignore: true)
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState extends LocationState {
  factory _LocationState({LocationData? locationData}) = _$_LocationState;
  _LocationState._() : super._();

  @override
  LocationData? get locationData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
