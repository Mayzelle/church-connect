
import 'package:get_it/get_it.dart';
import 'package:love_community_chapel/features/auth/data/repositories/auth-repository-impl.dart';
import 'package:love_community_chapel/features/auth/domain/repositories/auth-repository.dart';
import 'package:love_community_chapel/features/auth/domain/usecases/login-usecase.dart';
import 'package:love_community_chapel/features/auth/domain/usecases/register-usercase.dart';
import 'package:love_community_chapel/features/auth/presentation/bloc/auth_bloc.dart';

  var sl = GetIt.instance;

Future<void> init () async {
  // Repositories
  sl.registerFactory<AuthRepository>(() => AuthRepositoryImpl() );

  // UseCases
  sl.registerFactory<RegisterUseCase>(() => RegisterUseCase(sl<AuthRepository>()));
  sl.registerFactory<LoginUseCase>(() => LoginUseCase(sl<AuthRepository>()));

  // BLoCs
  sl.registerFactory<AuthBloc>(() => AuthBloc(
    sl<LoginUseCase>(),
    sl<RegisterUseCase>()
  ));

}