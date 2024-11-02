import 'package:dartz/dartz.dart';

import '../../../error/error_response.dart';
import '../../../utils/type_of.dart';

import '../../domain/repository/login_repository.dart';
import '../model/login_response.dart';
import '../remote_data_source/login_remote_remote_data_source.dart';

class LoginRepositoryImplementation extends LoginRepository {
  final LoginRemoteDataSource loginRemoteDataSource;

  LoginRepositoryImplementation(this.loginRemoteDataSource);

  @override
  ResultFuture<LoginResponse> login(
      {required String username, required String password}) async {
    try {
      final result = await loginRemoteDataSource.login(
          username: username, password: password);
      return Right(result);
    } catch (e) {
      return Left(ErrorResponse(message: e.toString()));
    }
  }
}

class Failure extends Error {
  final String message;

  Failure({required this.message});
}
