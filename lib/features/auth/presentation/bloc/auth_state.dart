part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  final DioException? error;
  final UserEntity? user;
  const AuthState({
    this.user,
    this.error,
  });  

  @override
  List<Object> get props => [ user ?? Object(), error ?? Object()];
}
class AuthInitial extends AuthState {
  const AuthInitial() : super();
}

class AuthLoading extends AuthState {
  const AuthLoading() : super();
}

class AuthLoginSuccess extends AuthState {
  const AuthLoginSuccess(UserEntity user): super (user: user);
}

class AuthLoginError extends AuthState {
  const AuthLoginError(DioException error) : super(error: error);
}

class AuthRegisterSuccess extends AuthState {
  const AuthRegisterSuccess(UserEntity user) : super(user: user);
}

class AuthRegisterError extends AuthState {
  const AuthRegisterError(DioException error) : super(error: error);  
}
