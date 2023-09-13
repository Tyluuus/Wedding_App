import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wedding_app/domain/error/error_service.dart';
import 'package:wedding_app/domain/information/information_model.dart';
import 'package:wedding_app/presentation/pages/base_cubit.dart';

part 'info_cubit.freezed.dart';
part 'info_state.dart';

class InfoCubit extends BaseCubit<InfoState> {
  final ErrorsService _errorsService;

  InfoCubit(
    this._errorsService,
  ) : super(const InfoState.idle());

  final BehaviorSubject<List<InformationModel>?> _informationSubject = BehaviorSubject();

  Stream<List<InformationModel>?> get informationStream => _informationSubject.stream;

  Stream<bool> get timeoutStream => _errorsService.connectionErrorsStream;

  Future<void> init() async {
    _errorsService.deactivateConnectionError();

    emit(const InfoState.loaded());

    await _loadData();
  }

  Future<void> _loadData() async {
    //TODO: Api call
    final List<InformationModel>? informationList = [];
    if (informationList == null) {
      return;
    }

    if (!_informationSubject.isClosed) _informationSubject.add(informationList);
  }

  @override
  Future<void> close() {
    _informationSubject.close();
    return super.close();
  }
}
