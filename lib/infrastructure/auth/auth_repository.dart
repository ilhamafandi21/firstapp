import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firstapp/domain/auth/model/login_request.dart';
import 'package:firstapp/domain/auth/model/login_response.dart';

class AuthRepository {
  final _dio = Dio();

  Future<Either<String, LoginResponse>> signInUserWithPass({
    required LoginRequest loginRequest,
  }) async {
    try {
      final response = await _dio.post(
        'https://dummyjson.com/user/login',
        data: loginRequest.toJson(),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      final loginResp = LoginResponse.fromJson(response.data);
      return right(loginResp);
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          return left(e.message ?? e.error.toString());
        default:
          return left(e.message ?? e.error.toString());
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
