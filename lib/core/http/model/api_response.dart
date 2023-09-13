class ApiResponse {
  final int statusCode;
  final List<dynamic>? body;

  ApiResponse({required this.statusCode, this.body});
}
