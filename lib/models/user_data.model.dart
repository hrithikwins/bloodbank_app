// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

class UserData {
  UserData({
    this.fullName,
    this.dateOfBirth,
    this.age,
    this.prevailingHealthConditions,
    this.bloodGroup,
  });

  String? fullName;
  String? dateOfBirth;
  String? age;
  String? prevailingHealthConditions;
  String? bloodGroup;

  UserData copyWith({
    String? fullName,
    String? dateOfBirth,
    String? age,
    String? prevailingHealthConditions,
    String? bloodGroup,
  }) =>
      UserData(
        fullName: fullName ?? this.fullName,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        age: age ?? this.age,
        prevailingHealthConditions:
            prevailingHealthConditions ?? this.prevailingHealthConditions,
        bloodGroup: bloodGroup ?? this.bloodGroup,
      );

  factory UserData.fromRawJson(String str) =>
      UserData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        fullName: json["full_name"],
        dateOfBirth: json["date_of_birth"],
        age: json["age"],
        prevailingHealthConditions: json["prevailing_healthConditions"],
        bloodGroup: json["blood_group"],
      );

  Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "date_of_birth": dateOfBirth,
        "age": age,
        "prevailing_healthConditions": prevailingHealthConditions,
        "blood_group": bloodGroup,
      };
}

// enum String {
//   diabetes,
//   hypertension,
//   heartDisease,
//   none,
// }
