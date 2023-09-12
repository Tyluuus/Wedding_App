part of 'app_cubit.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.idle() = AppStateIdle;
}
