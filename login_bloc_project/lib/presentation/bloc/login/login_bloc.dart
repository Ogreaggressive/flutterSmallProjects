import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';
import 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepo loginRepo;

  LoginBloc({required this.loginRepo})
      : super(
      LoginLoading(passwordController: TextEditingController(text: ""))) {
    on<LoginInput>((event, emit) async {
      emit(LoginLoading(passwordController: TextEditingController(text: "")));
      try {
        // final token = loginRepo.loginVerification
      } catch (e) {
        emit(LoginError(err.toString()));
      }
    });
    on<LoginFingerprint>((event, emit) async {
      emit(LoginLoading(passwordController: TextEditingController(text: "")));
      try {
        // token
        // faceID
        // Token
      } catch (e) {
        emit(LoginError(err.toString()));
      }
    });
  }
}