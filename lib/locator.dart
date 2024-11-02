import 'package:get_it/get_it.dart';

import 'features/login/data_source/remote_data_source/login_remote_remote_data_source.dart';
import 'features/login/data_source/repository/login_repository_implementation.dart';
import 'features/login/domain/repository/login_repository.dart';
import 'features/login/domain/use_cases/login.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  //login use case
  locator
    ..registerLazySingleton<Login>(
      () => Login(
        locator(),
      ),
    )
    // repository
    ..registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImplementation(
        locator(),
      ),
    )
    // data source
    ..registerLazySingleton<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl(),
    );
}
