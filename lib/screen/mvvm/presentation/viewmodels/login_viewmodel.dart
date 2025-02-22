
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/domain/usecases/login_usecase.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginUseCase loginUseCase;
  bool _isLoading = false;
  String? _errorMessage;
  String? _token; // Token stored after login

  LoginViewModel(this.loginUseCase);

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  String? get token => _token;

  Future<void> login(String username, String password) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _token = await loginUseCase.execute(username, password);
    } catch (e) {
      _errorMessage = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}
