part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class AuthEventLogin extends AuthEvent {
  final UserRequestModel userRequest;

  const AuthEventLogin(this.userRequest);
}

class AuthEventRegister extends AuthEvent {
  final UserRequestModel userRequest;

  const AuthEventRegister(this.userRequest);  
}