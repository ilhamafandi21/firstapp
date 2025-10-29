import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AuthRepository {
  Dio _dio = Dio();

  Future<String> signInUserWithPass({
    @required username,
    @required password,
  }) async {
    Response _response;

    Map<String, dynamic> requestData = {
      "username": username,
      "password": password,
    };

    _response = await _dio.post(
      'https://dummyjson.com/user/login',
      data: requestData,
    );
    String _result = _response.data.toString();
    return _result;
  }
}
