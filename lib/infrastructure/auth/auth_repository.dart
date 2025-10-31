import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firstapp/domain/auth/model/login_request.dart';
import 'package:firstapp/domain/auth/model/login_response.dart';
import 'package:flutter/foundation.dart';

class AuthRepository {
  Dio _dio = Dio();

  Future<Either<String, LoginResponse>> signInUserWithPass({
    @required LoginRequest? login_request
  }) async {
    Response _response;

   
    try {
  _response = await _dio.post(
    'https://dummyjson.com/user/login',
    data: login_request.toJson(),
  );
  LoginResponse _loginResp = LoginResponse.fromJson(_response.data);
  return right(_loginResp);
} on DioException  catch (e) {
  // TODO
  switch(e.type){
    case DioException(requestOptions: ):
    break;
      
  }
} 
  }
}
