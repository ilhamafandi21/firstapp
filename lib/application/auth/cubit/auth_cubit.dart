import 'package:bloc/bloc.dart';
import 'package:firstapp/domain/auth/model/login_request.dart';
import 'package:firstapp/domain/auth/model/login_response.dart';
import 'package:firstapp/infrastructure/auth/auth_repository.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  AuthRepository _authRepository = AuthRepository();

  void signUser(LoginRequest loginRequest) async {
    emit(AuthLoading());

    try {
      final _data = await _authRepository.signInUserWithPass(
        loginRequest: loginRequest,
      );

      _data.fold((l) => emit(AuthError(l)), (r) => emit(AuthSignSuccess(r)));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }
}
