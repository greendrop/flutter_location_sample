import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  factory LocationState({LocationData? locationData}) = _LocationState;
  const LocationState._();
}

class LocationStateNotifier extends StateNotifier<LocationState> {
  LocationStateNotifier(this.read) : super(LocationState());

  final Reader read;

  void setLocationData(LocationData? locationData) {
    state = state.copyWith(locationData: locationData);
  }
}
