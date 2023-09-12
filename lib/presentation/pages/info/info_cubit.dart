import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wedding_app/presentation/pages/base_cubit.dart';

part 'info_cubit.freezed.dart';
part 'info_state.dart';

class InfoCubit extends BaseCubit<InfoState> {
  InfoCubit() : super(const InfoState.idle());

  Future<void> init() async {
    emit(const InfoState.loaded());
  }
}
