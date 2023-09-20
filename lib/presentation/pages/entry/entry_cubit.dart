import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wedding_app/presentation/pages/base_cubit.dart';

part 'entry_cubit.freezed.dart';
part 'entry_state.dart';

class EntryCubit extends BaseCubit<EntryState> {
  EntryCubit() : super(const EntryState.idle());

  Future<void> init() async {
    emit(const EntryState.loaded());
    Future.delayed(const Duration(seconds: 2)).then((value) => navigateToNextPage());
  }

  Future<void> navigateToNextPage() async {
    emit(const EntryState.navigateToHome());
  }
}
