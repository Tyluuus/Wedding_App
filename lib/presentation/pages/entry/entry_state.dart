part of 'entry_cubit.dart';

@freezed
class EntryState with _$EntryState {
  const factory EntryState.idle() = EntryStateIdle;

  const factory EntryState.loaded() = EntryStateLoaded;

  const factory EntryState.navigateToHome() = EntryStateNavigateToHome;
}
