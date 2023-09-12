import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wedding_app/presentation/pages/base_cubit.dart';

part 'confirmation_cubit.freezed.dart';
part 'confirmation_state.dart';

class ConfirmationCubit extends BaseCubit<ConfirmationState> {
  ConfirmationCubit() : super(const ConfirmationState.idle());

  Future<void> init() async {
    emit(const ConfirmationState.loaded());
  }

  Future<void> confirmAttend() async {}
}
