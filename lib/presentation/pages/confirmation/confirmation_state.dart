part of 'confirmation_cubit.dart';

@freezed
class ConfirmationState with _$ConfirmationState {
  const factory ConfirmationState.idle() = ConfirmationStateIdle;

  const factory ConfirmationState.dump() = ConfirmationStateDump;

  const factory ConfirmationState.error() = ConfirmationStateError;

  const factory ConfirmationState.sendConfirmation(String userName, bool withPartner, String? partnerName, String? additionalInfo, String? contactNumber) =
      ConfirmationStateSendConfirmation;

  const factory ConfirmationState.loaded() = ConfirmationStateLoaded;
}
