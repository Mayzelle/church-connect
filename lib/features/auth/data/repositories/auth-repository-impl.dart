import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:love_community_chapel/core/resources/data-state.dart';
import 'package:love_community_chapel/core/utils/dependency_injector.dart';
import 'package:love_community_chapel/core/utils/firebase-config.dart';
import 'package:love_community_chapel/core/utils/local-storage.dart';
import 'package:love_community_chapel/features/auth/data/models/user-model.dart';
import 'package:love_community_chapel/features/auth/data/models/user-request-model.dart';
import 'package:love_community_chapel/features/auth/domain/repositories/auth-repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<DataState<UserModel>> login(
      {required UserRequestModel userRequest}) async {
    try {
      var auth = await firebaseAuth.signInWithEmailAndPassword(
        email: userRequest.email!,
        password: userRequest.password!,
      );

      var member =
          await firestore.collection('members').doc(auth.user?.uid).get();
      sl<LocalStorage>().setUser({"id": auth.user?.uid, ...member.data()!});
      return DataSuccess(UserModel.fromJson({"id": auth.user?.uid, ...member.data()!}));
    } on FirebaseAuthException catch (error) {
      throw Exception(error);
    } on FirebaseException catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<DataState<UserModel>> register(
      {required UserRequestModel userRequest}) async {
    try {
      var auth = await firebaseAuth.createUserWithEmailAndPassword(
        email: userRequest.email!,
        password: userRequest.password!,
      );

      await firestore
          .collection("members")
          .doc(auth.user?.uid)
          .set(userRequest.toJson());

      var member =
          await firestore.collection("members").doc(auth.user?.uid).get();
      sl<LocalStorage>().setUser({"id": auth.user?.uid, ...member.data()!});
      return DataSuccess(UserModel.fromJson({"id": auth.user?.uid, ...member.data()!}));
    } on FirebaseAuthException catch (error) {
      throw Exception(error);
    } on FirebaseException catch (error) {
      throw Exception(error);
    }
  }
}
