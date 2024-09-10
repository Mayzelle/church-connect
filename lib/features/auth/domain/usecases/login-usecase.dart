import 'package:love_community_chapel/core/resources/data-state.dart';
import 'package:love_community_chapel/core/usecase/usecase.dart';
import 'package:love_community_chapel/features/auth/data/models/user-request-model.dart';
import 'package:love_community_chapel/features/auth/domain/entities/user-entity.dart';
import 'package:love_community_chapel/features/auth/domain/repositories/auth-repository.dart';

class LoginUseCase implements UseCase<DataState<UserEntity>, UserRequestModel> {
  final AuthRepository authRepository;

  LoginUseCase( this.authRepository );

  Future<DataState<UserEntity>> call (UserRequestModel userRequest) async {
    return await authRepository.register(userRequest: userRequest);
  }
  
}