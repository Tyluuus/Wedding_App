part of 'contact_cubit.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.idle() = ContactStateIdle;

  const factory ContactState.loaded() = ContactStateLoaded;
}
