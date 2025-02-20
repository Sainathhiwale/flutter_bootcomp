import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: "https://fakestoreapi.com",
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));

  Future<String> login(String username, String password) async {
    try {
      Response response = await _dio.post(
        '/auth/login',
        data: {
          "username": username,
          "password": password,
        },
      );

      if (response.statusCode == 200 && response.data is Map<String, dynamic>) {
        String token = response.data['token'] as String;
        print("Login Successful! Token: $token"); // ✅ Print token to console
        return token; // ✅ Return token so AuthRepository can use it
      } else {
        throw Exception("Login failed: Invalid response format");
      }
    } on DioException catch (e) {
      throw Exception("Error: ${e.response?.data['message'] ?? 'Something went wrong'}");
    }
  }
}
