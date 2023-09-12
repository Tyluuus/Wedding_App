part of 'base_page_cubit.dart';

@freezed
class BasePageState with _$BasePageState {
  const factory BasePageState.idle() = BasePageStateIdle;

  const factory BasePageState.loaded() = BasePageStateLoaded;
}
