class LoginEvent {}

class LoginInput extends LoginEvent{
  final String email;
  final String password;

  LoginInput({required this.email, required this.password});
}


class LoginFaceID extends LoginEvent{

}


class LoginFingerprint extends LoginEvent{

}
