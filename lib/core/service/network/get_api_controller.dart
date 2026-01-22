// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import '../../logger/log.dart';
// import '../cache/cache_service.dart';
// import 'api_response_data.dart';

// Future<ApiResponseData> getApiController(
//   String endpoint,
//   bool isTokenNeeded,
// ) async {
//   Map<String, String> header = {};
//   if (isTokenNeeded) {
//     final token = await CacheService.get(CacheKey.token);
//     header['Authorization'] = 'Bearer $token';
//   }
//   ApiResponseData result = ApiResponseData();
//   try {
//     final response = await http.get(Uri.parse(endpoint), headers: header);
//     result.statusCode = response.statusCode;
//     result.responseBody = response.body;
//     return result;
//   } catch (e) {
//     result.responseBody = jsonEncode({
//       'message': 'Failed to connect with server',
//     });
//     Log.error('Failed to connect with $endpoint, error: $e');
//   }
//   return result;
// }
