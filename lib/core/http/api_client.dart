import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:wedding_app/core/http/model/api_response.dart';

class ApiClient {
  final String _baseApiUrl = "";
  final int timeoutDuration = 20;

  String get apiUrl {
    return _baseApiUrl;
  }

  Future<ApiResponse> get(String requestUrl) async {
    final url = Uri.parse(_baseApiUrl + requestUrl);
    final apiClient = await Client();
    try {
      final response = await apiClient.get(url).timeout(Duration(seconds: timeoutDuration));
      return ApiResponse(statusCode: response.statusCode, body: _decodeResponse(response));
    } on TimeoutException catch (_) {
      return ApiResponse(statusCode: HttpStatus.requestTimeout);
    } catch (error, stackTrace) {
      return ApiResponse(statusCode: HttpStatus.notFound);
    } finally {
      apiClient.close();
    }
  }

  List? _decodeResponse(Response response) {
    return response.statusCode == HttpStatus.ok
        ? response.body.isNotEmpty
            ? jsonDecode(response.body).runtimeType == List
                ? jsonDecode(response.body)
                : [jsonDecode(response.body)]
            : []
        : null;
  }
}
