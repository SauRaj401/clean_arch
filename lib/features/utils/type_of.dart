import 'package:dartz/dartz.dart';

import '../error/error_response.dart';

typedef ResultFuture<T> = Future<Either<ErrorResponse, T>>;

typedef Result<T> = Either<ErrorResponse, T>;

typedef ResultVoid = Either<ErrorResponse, void>;
