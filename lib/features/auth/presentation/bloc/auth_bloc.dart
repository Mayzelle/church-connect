import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:love_community_chapel/core/resources/data-state.dart';
import 'package:love_community_chapel/features/auth/data/models/user-request-model.dart';
import 'package:love_community_chapel/features/auth/domain/entities/user-entity.dart';
import 'package:love_community_chapel/features/auth/domain/usecases/login-usecase.dart';
import 'package:love_community_chapel/features/auth/domain/usecases/register-usercase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RegisterUseCase registerUseCase;
  final LoginUseCase loginUseCase;
  AuthBloc(
    this.loginUseCase,
    this.registerUseCase
  ) : super(AuthInitial()) {
    on<AuthEventRegister>(register);
    on<AuthEventLogin>(login);
  }

  void login (AuthEventLogin event, Emitter<AuthState> emit) async{
    emit(const AuthLoading());
    DataState dataState = await loginUseCase.call(event.userRequest);
    if (dataState is DataSuccess) {
      emit(AuthLoginSuccess(dataState.data));
    }
    if (dataState is DataFailed) {
      emit(AuthLoginError(dataState.error!));
    }
  }

  void register (AuthEventRegister event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    DataState dataState = await registerUseCase.call(event.userRequest);
    if (dataState is DataSuccess) {
      emit(AuthRegisterSuccess(dataState.data));
    }
    if (dataState is DataFailed) {
      emit(AuthRegisterError(dataState.error!));
    }
  }
}
