part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.idle() = LocationStateIdle;

  const factory LocationState.loaded() = LocationStateLoaded;
}
