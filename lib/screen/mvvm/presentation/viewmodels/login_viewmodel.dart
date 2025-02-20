
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/domain/usecases/login_usecase.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginUseCase loginUseCase;
  String _username = '';
  String _password = '';
  bool _isLoading = false;
  String? _errorMessage;

  LoginViewModel(this.loginUseCase);

  String get email => _username;
  String get password => _password;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  void setEmail(String email) {
    _username = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  Future<bool> login() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    bool success = await loginUseCase.execute(_username, _password);
    _isLoading = false;

    if (!success) {
      _errorMessage = "Invalid credentials!";
    }

    notifyListeners();
    return success;
  }
}
