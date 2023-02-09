import 'package:flutter/material.dart';
import "package:provider/provider.dart";

import '../models/user_data.model.dart';

class UserProvider extends ChangeNotifier {
  UserData _userData = UserData(
    fullName: "",
    age: "",
    bloodGroup: "",
    dateOfBirth: "",
    prevailingHealthConditions: "",
  );

  UserData get userData => _userData;

  set userData(UserData userData) {
    _userData = userData;
    print("User Data: ${_userData.bloodGroup}");
    notifyListeners();
  }

  // update the user data
  void updateUserData(data) {
    _userData!.fullName = data;
    notifyListeners();
  }
}
