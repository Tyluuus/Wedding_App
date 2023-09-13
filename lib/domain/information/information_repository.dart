import 'dart:io';

import 'package:wedding_app/core/http/api_client.dart';
import 'package:wedding_app/core/http/model/api_response.dart';
import 'package:wedding_app/domain/information/information_model.dart';

class InformationRepository {
  final ApiClient _apiClient;

  InformationRepository(
    this._apiClient,
  );

  Future<List<InformationModel>?> getInfoList() async {
    final url = '';
    ApiResponse response = await _apiClient.get(url);
    try {
      return response.statusCode == HttpStatus.ok ? response.body!.map((element) => InformationModel.fromJson(element)).toList() : null;
    } catch (error, stackTrace) {
      return null;
    }
  }
}
