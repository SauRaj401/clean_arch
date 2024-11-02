import 'package:clean_arch/features/login/data_source/model/login_response.dart';
import 'package:clean_arch/features/utils/type_of.dart';

import '../../../usecases/usecases.dart';
import '../repository/login_repository.dart';

class Login extends UsecaseWithParams<LoginResponse, LoginParams> {
  final LoginRepository loginRepository;

  Login(this.loginRepository);

  @override
  ResultFuture<LoginResponse> call(LoginParams params) {
    return loginRepository.login(
        username: params.username, password: params.password);
  }
}

class LoginParams {
  final String username;
  final String password;

  LoginParams({required this.username, required this.password});
}
