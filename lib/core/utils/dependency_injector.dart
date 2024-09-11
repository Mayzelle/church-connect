import 'package:get_it/get_it.dart';
import 'package:love_community_chapel/features/auth/data/repositories/auth-repository-impl.dart';
import 'package:love_community_chapel/features/auth/domain/repositories/auth-repository.dart';
import 'package:love_community_chapel/features/auth/domain/usecases/login-usecase.dart';
import 'package:love_community_chapel/features/auth/domain/usecases/register-usercase.dart';
import 'package:love_community_chapel/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:love_community_chapel/features/sermons/data/repositories/sermon-repository-impl.dart';
import 'package:love_community_chapel/features/sermons/domain/repositories/sermon-respository.dart';
import 'package:love_community_chapel/features/sermons/presentation/bloc/sermons_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/sermons/domain/usecases/get-sermons-usecase.dart';
import 'local-storage.dart';

var sl = GetIt.instance;

Future<void> init() async {
  // Local Storage
  sl.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance());
  sl.registerLazySingleton<LocalStorage>(
      () => LocalStorage(sl<SharedPreferences>()));

  // Repositories
  sl.registerFactory<AuthRepository>(() => AuthRepositoryImpl());
  sl.registerFactory<SermonRepository>(() => SermonRepositoryImpl());

  // UseCases
  // Auth
  sl.registerFactory<RegisterUseCase>(
      () => RegisterUseCase(sl<AuthRepository>()));
  sl.registerFactory<LoginUseCase>(() => LoginUseCase(sl<AuthRepository>()));

  // Sermons
  sl.registerFactory<GetSermonsUseCase>(
      () => GetSermonsUseCase(sl<SermonRepository>()));

  // BLoCs
  sl.registerFactory<AuthBloc>(
      () => AuthBloc(sl<LoginUseCase>(), sl<RegisterUseCase>()));
  sl.registerFactory<SermonsBloc>(() => SermonsBloc(sl<GetSermonsUseCase>()));
}
