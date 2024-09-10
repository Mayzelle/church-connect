import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? id;
  final String? firstName;
  final String? lastName;
  final int? age;
  final String? email;
  final String? phoneNumber;
  final String? gender;
  final String? location;

  const UserEntity({
    this.id,
    this.firstName,
    this.lastName,
    this.age,
    this.email,
    this.phoneNumber,
    this.gender,
    this.location
  });
  
  @override
  List get props => [
    id,
    firstName,
    lastName,
    age,
    email,
    phoneNumber,
    gender,
    location,
  ];

  
}