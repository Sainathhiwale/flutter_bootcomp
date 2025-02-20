
import 'package:flutter_bootcamp_2025/screen/mvvm/data/models/user.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/data/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);

  Future<bool> execute(String username, String password) {
    return authRepository.login(User(username,password));
  }
}