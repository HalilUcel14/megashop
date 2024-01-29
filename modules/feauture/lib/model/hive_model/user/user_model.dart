import 'package:equatable/equatable.dart';
import 'package:feauture/feauture.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user_model.g.dart';

@immutable
@HiveType(typeId: HiveTypes.userModelType)
final class UserModel extends Equatable
    with HiveModelMixin
    implements BaseModel<UserModel> {
  @override
  @HiveField(0)
  final String key;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String password;
  @HiveField(3)
  final String role;
  @HiveField(4)
  final bool isActive;
  @HiveField(5)
  final DateTime lastEntry;
  @HiveField(6)
  final String phoneNumber;
  @HiveField(7)
  final bool emailValid;
  @HiveField(8)
  final bool phoneValid;
  @HiveField(9)
  final List<String> activeCompanyKey;

  UserModel({
    required this.email,
    required this.password,
    required this.role,
    required this.isActive,
    required this.lastEntry,
    required this.phoneNumber,
    required this.emailValid,
    required this.phoneValid,
    required this.activeCompanyKey,
    required this.key,
  });

  @override
  UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      password: json['password'],
      role: json['role'],
      isActive: json['isActive'],
      lastEntry: json['lastEntry'],
      phoneNumber: json['phoneNumber'],
      emailValid: json['emailValid'],
      phoneValid: json['phoneValid'],
      activeCompanyKey: json['activeCompanyKey'],
      key: json['key'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'role': role,
      'isActive': isActive,
      'lastEntry': lastEntry,
      'phoneNumber': phoneNumber,
      'emailValid': emailValid,
      'phoneValid': phoneValid,
      'activeCompanyKey': activeCompanyKey,
      'key': key,
    };
  }

  @override
  List<Object?> get props => [
        email,
        password,
        role,
        isActive,
        lastEntry,
        phoneNumber,
        emailValid,
        phoneValid,
        activeCompanyKey,
        key
      ];
}








// @HiveType(typeId: HiveTypes.userModelType)
// final class UserModel extends BaseModel<UserModel> with HiveModelMixin {
//   @override
//   @HiveField(0)
//   final String key;
//   @HiveField(1)
//   final String? emailAddress;
//   @HiveField(2)
//   final String? password;
//   @HiveField(3)
//   final String? userName;
//   @HiveField(4)
//   final bool? isActive;
//   @HiveField(5)
//   final String? role;

//   UserModel({
//     required this.key,
//     required this.emailAddress,
//     required this.password,
//     required this.userName,
//     required this.isActive,
//     required this.role,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       key: json['key'],
//       emailAddress: json['emailAddress'],
//       password: json["password"],
//       userName: json["userName"],
//       isActive: json['isActive'],
//       role: json['role'],
//     );
//   }

//   @override
//   fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       key: json['key'],
//       emailAddress: json['emailAddress'],
//       password: json["password"],
//       userName: json["userName"],
//       isActive: json['isActive'],
//       role: json['role'],
//     );
//   }

//   @override
//   Map<String, dynamic> toJson() {
//     return {
//       'key': key,
//       "emailAddress": emailAddress,
//       "password": password,
//       "userName": userName,
//       "isActive": isActive,
//       "role": role,
//     };
//   }
// }