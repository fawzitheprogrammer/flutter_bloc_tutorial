part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthRequest extends AuthEvent {
  final String email;
  final String password;

  AuthRequest(this.email, this.password);
}
