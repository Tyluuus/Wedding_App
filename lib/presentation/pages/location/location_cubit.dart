import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wedding_app/presentation/pages/base_cubit.dart';

part 'location_cubit.freezed.dart';
part 'location_state.dart';

class LocationCubit extends BaseCubit<LocationState> {
  LocationCubit() : super(const LocationState.idle());

  Future<void> init() async {
    emit(const LocationState.loaded());
  }
}
