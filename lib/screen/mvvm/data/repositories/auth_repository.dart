import 'package:flutter/foundation.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/data/services/api_service.dart';
import '../models/user.dart';

class AuthRepository {
  final ApiService apiService;

  AuthRepository(this.apiService);

  Future<String> login(String username, String password) async {
    return await apiService.login(username, password);
  }
}
