import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  UserModel? _user;

  get user => _user;
  set user(val) {
    _user = val;
    notifyListeners();
  }
}

class UserModel {
  final String id;
  final String name;

  UserModel({required this.id, required this.name});
}
