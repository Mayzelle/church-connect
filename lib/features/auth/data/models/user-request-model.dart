import 'package:love_community_chapel/features/auth/domain/entities/user-entity.dart';

class UserRequestModel extends UserEntity {
  final String? password;
  final String? confirmPassword;

  UserRequestModel({
    super.firstName,
    super.lastName,
    super.age,
    super.gender,
    super.email,
    super.phoneNumber,
    super.location,
    this.password,
    this.confirmPassword,
  });

  Map<String, dynamic> toJson() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "age": age,
      "gender": gender,
      "email": email,
      "phoneNumber": phoneNumber,
      "location": location,
      "password": password,
      "confirmPassword": confirmPassword,
    };
  }
}