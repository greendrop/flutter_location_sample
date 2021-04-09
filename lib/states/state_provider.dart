import 'package:flutter_location_sample/states/position_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final positionStateProvider =
    StateNotifierProvider((ref) => PositionStateNotifier(ref.read));
