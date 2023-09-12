part of 'confirmation_cubit.dart';

@freezed
class ConfirmationState with _$ConfirmationState {
  const factory ConfirmationState.idle() = ConfirmationStateIdle;

  const factory ConfirmationState.loaded() = ConfirmationStateLoaded;
}
