part of 'info_cubit.dart';

@freezed
class InfoState with _$InfoState {
  const factory InfoState.idle() = InfoStateIdle;

  const factory InfoState.loaded() = InfoStateLoaded;
}
