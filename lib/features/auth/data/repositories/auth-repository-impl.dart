import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:love_community_chapel/core/resources/data-state.dart';
import 'package:love_community_chapel/core/utils/firebase-config.dart';
import 'package:love_community_chapel/features/auth/data/models/user-model.dart';
import 'package:love_community_chapel/features/auth/data/models/user-request-model.dart';
import 'package:love_community_chapel/features/auth/domain/repositories/auth-repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<DataState<UserModel>> login(
      {required UserRequestModel userRequest}) async {
    // try {
    //   var auth = await firebaseAuth.signInWithEmailAndPassword(
    //       email: userRequest.email!, password: userRequest.password!);

    //   var member = await firestore
    //       .collection('members')
    //       .where("id", isEqualTo: auth.user?.uid)
    //       .get();
    //   return DataSuccess(UserModel.fromJson(member.docs.first.data()));
    // } on DioException catch (error) {
    //   throw Exception(error);
    // }

    throw Exception("Not yet implemented");
  }

  @override
  Future<DataState<UserModel>> register(
      {required UserRequestModel userRequest}) async {
        print("Register User");
        print("Register User");
        print("Register User");
        print("Register User");
        print("Register User");
    try {
      var auth = await firebaseAuth.createUserWithEmailAndPassword(
        email: userRequest.email!,
        password: userRequest.password!,
      );

      await firestore
          .collection("members")
          .add({"id": auth.user?.uid, ...userRequest.toJson()});
      var member = await firestore
          .collection("members")
          .where("id", isEqualTo: auth.user?.uid)
          .get();
      return DataSuccess(UserModel.fromJson(member.docs.first.data()));
    } on DioException catch (error) {
      throw Exception(error);
    }
  }
}
