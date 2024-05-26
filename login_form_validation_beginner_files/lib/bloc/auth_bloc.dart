import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthRequest>(_onAuthRequest);
  }

  void _onAuthRequest(AuthRequest event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final email = event.email;
    final password = event.password;

    try {
      if (password.length < 6) {
        emit(AuthFailure(message: 'Password must be at least 6 characters'));
      }

      await Future.delayed(const Duration(seconds: 1), () {
        emit(AuthSuccess(success: 'Logged in successfully'));
      });
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }
}
