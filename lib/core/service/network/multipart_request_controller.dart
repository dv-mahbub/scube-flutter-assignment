// import 'dart:convert';
// import 'dart:io';

// import 'package:http/http.dart' as http;
// import 'package:prachurja/core/service/cache/cache_service.dart';

// import '../../logger/log.dart';
// import 'api_response_data.dart';

// Future<ApiResponseData> multipartRequestController({
//   required String endpoint,
//   required bool isTokenNeeded,
//   Map<String, dynamic>? body,
//   required File imageFile,
//   required String imageKey,
// }) async {
//   ApiResponseData result = ApiResponseData();
//   try {
//     Map<String, String> header = {'Content-Type': 'application/json'};
//     if (isTokenNeeded) {
//       final token = await CacheService.get(CacheKey.token);
//       header['Authorization'] = 'Bearer $token';
//     }
//     var request = http.MultipartRequest('POST', Uri.parse(endpoint));
//     request.headers.addAll(header);
//     var image = await http.MultipartFile.fromPath(imageKey, imageFile.path);
//     if (body != null) {
//       body.forEach((key, value) {
//         request.fields[key] = value.toString();
//       });
//     }
//     request.files.add(image);
//     final response = await request.send();
//     result.statusCode = response.statusCode;

//     //to get response body
//     final responseData = await response.stream.toBytes();
//     result.responseBody = String.fromCharCodes(responseData);
//   } catch (e) {
//     result.responseBody = jsonEncode({'message': 'Failed to upload'});
//     Log.error('Failed to upload to $endpoint, error: $e');
//   }
//   return result;
// }
