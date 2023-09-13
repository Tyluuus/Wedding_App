import 'package:wedding_app/domain/error/error_service.dart';
import 'package:wedding_app/domain/information/information_model.dart';
import 'package:wedding_app/domain/information/information_repository.dart';

class InformationService {
  final InformationRepository _informationRepository;
  final ErrorsService _errorsService;

  InformationService(this._informationRepository, this._errorsService);

  Future<List<InformationModel>?> getInformationList() async {
    final infoList = await _informationRepository.getInfoList();
    infoList == null ? _errorsService.activateConnectionError() : _errorsService.deactivateConnectionError();

    return infoList;
  }
}
