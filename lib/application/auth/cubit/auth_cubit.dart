import 'dart:convert';

import 'package:firstapp/domain/auth/model/login_request.dart';
import 'package:firstapp/domain/auth/model/login_response.dart';
import 'package:firstapp/infrastructure/auth/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firstapp/utils/constants.dart' as constants;

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  AuthRepository authRepository = AuthRepository();

  void signUser(LoginRequest loginRequest) async {
    emit(AuthLoading());

    try {
      final data = await authRepository.signInUserWithPass(
        loginRequest: loginRequest,
      );

      data.fold((l) => emit(AuthError(l)), (r) => emit(AuthSignSuccess(r)));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  void saveUserToLocal(LoginResponse data) async {
    emit(AuthLoading());
    try {
      await GetStorage().write(
      constants.USER_LOCAL_KEY, jsonEncode(data.toJson())
      ,
    );
    emit(AuthSuccess());
    } catch (e) {
      emit(AuthError(e.toString()));
    }
    
  }
}
