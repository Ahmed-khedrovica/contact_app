import 'dart:io';

class UserModel {
  final String name;
  final String email;
  final String phone;
  final File? image;

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    this.image,
  });
}
