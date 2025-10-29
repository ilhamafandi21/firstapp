import 'package:bloc/bloc.dart';
import 'package:firstapp/infrastructure/auth/auth_repository.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  AuthRepository _authRepository =  AuthRepository();

  void signUser(String username, String password){
    
  }
}
