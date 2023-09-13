import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wedding_app/domain/storage/secure_storage_repository.dart';
import 'package:wedding_app/presentation/pages/base_cubit.dart';

part 'confirmation_cubit.freezed.dart';
part 'confirmation_state.dart';

class ConfirmationCubit extends BaseCubit<ConfirmationState> {
  final SecureStorageRepository _secureStorageRepository;

  ConfirmationCubit(this._secureStorageRepository) : super(const ConfirmationState.idle());

  final BehaviorSubject<bool> _isConfirmedSubject = BehaviorSubject();

  Stream<bool> get isConfirmedStream => _isConfirmedSubject.stream;

  Future<void> init() async {
    emit(const ConfirmationState.loaded());
    final isConfirmed = await _secureStorageRepository.isConfirmed() == "true";

    if (!_isConfirmedSubject.isClosed) _isConfirmedSubject.add(isConfirmed);
  }

  Future<void> confirmAttend() async {
    await _secureStorageRepository.setAsConfirmed();
    emit(const ConfirmationState.dump());
    emit(const ConfirmationState.loaded());
  }

  @override
  Future<void> close() {
    _isConfirmedSubject.close();
    return super.close();
  }
}
