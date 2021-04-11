import 'package:flutter_location_sample/states/location_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final locationStateProvider =
    StateNotifierProvider((ref) => LocationStateNotifier(ref.read));
