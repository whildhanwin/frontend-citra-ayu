import 'dart:async';

import 'package:citra/models/user_model.dart';
import 'package:citra/services/auth_service.dart';
import 'package:flutter/cupertino.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;
  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool?> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthServices().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
