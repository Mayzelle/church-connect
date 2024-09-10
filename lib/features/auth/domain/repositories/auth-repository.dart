import 'package:love_community_chapel/core/resources/data-state.dart';
import 'package:love_community_chapel/features/auth/data/models/user-model.dart';
import 'package:love_community_chapel/features/auth/data/models/user-request-model.dart';

abstract class AuthRepository {
  Future<DataState<UserModel>> login({
    required UserRequestModel userRequest
  });

  Future<DataState<UserModel>> register({
    required UserRequestModel userRequest,
  });
}
