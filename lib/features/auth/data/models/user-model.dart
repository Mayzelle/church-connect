import 'package:love_community_chapel/features/auth/domain/entities/user-entity.dart';

class UserModel extends UserEntity {

  const UserModel({
    super.id,
    super.firstName,
    super.lastName,
    super.age,
    super.email,
    super.phoneNumber,
    super.gender,
    super.location,
  });

  factory UserModel.fromJson ( Map<String, dynamic> json ) {
    return UserModel(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      age: json['age'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      gender: json['gender'],
      location: json['location'],
    );
  }
  
}