// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import '../../logger/log.dart';
// import '../cache/cache_service.dart';
// import 'api_response_data.dart';

// Future<ApiResponseData> putApiController(
//   String endpoint,
//   bool isTokenNeeded,
//   Map? body,
// ) async {
//   Map<String, String> header = {'Content-Type': 'application/json'};
//   if (isTokenNeeded) {
//     final token = await CacheService.get(CacheKey.token);
//     header['Authorization'] = 'Bearer $token';
//   }
//   ApiResponseData result = ApiResponseData();
//   try {
//     final response = await http.put(
//       Uri.parse(endpoint),
//       headers: header,
//       body: jsonEncode(body),
//     );
//     result.statusCode = response.statusCode;
//     result.responseBody = response.body;
//     return result;
//   } catch (e) {
//     result.responseBody = jsonEncode({'message': 'Failed to connect'});
//     Log.error('Failed to connect with $endpoint');
//   }
//   return result;
// }
