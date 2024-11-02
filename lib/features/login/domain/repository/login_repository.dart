import '../../../utils/type_of.dart';
import '../../data_source/model/login_response.dart';

abstract class LoginRepository {
  ResultFuture<LoginResponse> login({
    required String username,
    required String password,
  });
}
