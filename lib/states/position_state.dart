import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'position_state.freezed.dart';

@freezed
class PositionState with _$PositionState {
  factory PositionState({Position? position}) = _PositionState;
  const PositionState._();
}

class PositionStateNotifier extends StateNotifier<PositionState> {
  PositionStateNotifier(this.read) : super(PositionState());

  final Reader read;

  void setPosition(Position? position) {
    state = state.copyWith(position: position);
  }
}
