import 'package:flutter/material.dart';
import "package:provider/provider.dart";

import '../models/user_data.model.dart';

class UserProvider extends ChangeNotifier {
  UserData? _userData;

  UserData? get userData => _userData;

  set userData(UserData? userData) {
    _userData = userData;
    print("User Data: ${_userData!}");
    notifyListeners();
  }

  // update the user data
  void updateUserData({required String dataKey, required String dataValue}) {
    _userData!.fullName = dataValue;
    notifyListeners();
  }
}
