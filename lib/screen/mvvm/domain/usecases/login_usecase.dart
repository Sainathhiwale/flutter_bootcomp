
import 'package:flutter_bootcamp_2025/screen/mvvm/data/models/user.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/data/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);

  Future<String> execute(String username, String password) async {
    return await authRepository.login(username, password);
  }
}