import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wedding_app/presentation/pages/base_cubit.dart';

part 'contact_cubit.freezed.dart';
part 'contact_state.dart';

class ContactCubit extends BaseCubit<ContactState> {
  ContactCubit() : super(const ContactState.idle());

  Future<void> init() async {
    emit(const ContactState.loaded());
  }
}
