part of 'auth_cubit.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class AuthLoading extends AuthState {}
final class AuthError extends AuthState {
  final String errorMessage;
  AuthError(this.errorMessage);
}
final class AuthSignSuccess extends AuthState {
  final LoginResponse dataLogin;
  AuthSignSuccess(this.dataLogin);
}
