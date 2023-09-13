import 'dart:io';

import 'package:wedding_app/core/http/api_client.dart';
import 'package:wedding_app/core/http/model/api_response.dart';
import 'package:wedding_app/domain/review/review_model.dart';

class ReviewRepository {
  final ApiClient _apiClient;

  ReviewRepository(
    this._apiClient,
  );

  Future<List<ReviewModel>?> getReviewsList() async {
    final url = '';
    ApiResponse response = await _apiClient.get(url);
    try {
      return response.statusCode == HttpStatus.ok ? response.body!.map((element) => ReviewModel.fromJson(element)).toList() : null;
    } catch (error, stackTrace) {
      return null;
    }
  }
}
