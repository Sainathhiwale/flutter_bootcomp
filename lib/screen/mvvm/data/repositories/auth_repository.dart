import 'package:flutter/foundation.dart';
import '../models/user.dart';

class AuthRepository {
  Future<bool> login(User user) async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay
    return user.username == "mor_2314" && user.password == "83r5^_";
  }
}
