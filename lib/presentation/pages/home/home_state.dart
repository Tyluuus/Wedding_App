part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.idle() = HomeStateIdle;

  const factory HomeState.loaded() = HomeStateLoaded;

}
