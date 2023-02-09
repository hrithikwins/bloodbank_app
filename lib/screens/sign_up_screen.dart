import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/routes.dart';
import 'package:bloodbank_app/constants/shared_prefs.dart';
import 'package:bloodbank_app/utils/firestore_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_data.model.dart';
import '../providers/user_provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late SharedPreferences prefs;
  late UserData userData;

  // Provider.of<UserProvider>(context, listen: false)
  //     .userData;
  // FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> signUpTheUser() async {
    if (_formKey.currentState!.validate()) {
      print("Valid");
      _formKey.currentState!.save();
      _scaffoldKey.currentState?.showBottomSheet(
        (context) => Container(
          height: 100,
          color: Colors.red,
          child: Center(
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                      context,
                      Routes.home,
                    ),
                child: Text("Data Saved")),
          ),
        ),
      );

      // Navigator.pushNamed(context, Routes.home);
    }
  }

  // Future<void> createFirestoreData(documentId, data) async {
  //   var response = FireStoreMethods.updateOrCreateFirestoreData(
  //    documentId,
  //     "users", data,
  //     isMerge: false,
  //   );

  //   // Provider.of<UserProvider>(context, listen: false).userData = UserData(age: );
  //   debugPrint(response.toString());
  // }

  @override
  void initState() {
    // TODO: implement initState
    onInit();
    super.initState();
  }

  // declaring a function so that the initState can call it without asynchrony
  void onInit() async {
    userData = Provider.of<UserProvider>(context, listen: false).userData;
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: MyColors.redPrimary,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    textFieldWithLabel(
                      "Your Name",
                      onSaved: (newValue) => {
                        Provider.of<UserProvider>(context, listen: false)
                            .userData = UserData(
                          fullName: newValue,
                        )
                      },
                    ),
                    textFieldWithLabel(
                      "Date of Birth",
                      onSaved: (newValue) => {
                        Provider.of<UserProvider>(context, listen: false)
                            .userData = UserData(
                          dateOfBirth: newValue,
                        )
                      },
                    ),
                    textFieldWithLabel(
                      "Age",
                      onSaved: (newValue) => {
                        Provider.of<UserProvider>(context, listen: false)
                            .userData = UserData(
                          age: newValue,
                        )
                      },
                      // userDataFieldKey: SharedPrefsConstant.age,
                    ),
                    DropdownButtonFormField(
                      value: "none",
                      onSaved: (newValue) => {
                        Provider.of<UserProvider>(context, listen: false)
                            .userData = UserData(
                          prevailingHealthConditions: newValue.toString(),
                        ),
                      },
                      items: [
                        "diabetes",
                        "hypertension",
                        "heartDisease",
                        "none",
                      ]
                          .map((e) => DropdownMenuItem(
                                child: Container(
                                  color: MyColors.redPrimary,
                                  child: Text(
                                    e.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                value: e.toString(),
                              ))
                          .toList(),
                      onChanged: (value) {},
                    ),
                    // textFieldWithLabel(
                    //   "Prevailing Health Conditions",
                    //   userDataFieldKey: SharedPrefsConstant.healthConditions,
                    // ),
                    textFieldWithLabel("Blood Group",
                        onSaved: (newValue) => {
                              print("------------------------"),
                              Provider.of<UserProvider>(context, listen: false)
                                  .userData = UserData(
                                bloodGroup: newValue,
                              )
                            }
                        // userDataFieldKey: SharedPrefsConstant.bloodGroup,
                        ),
                    ElevatedButton(
                      onPressed: signUpTheUser,
                      child: const Text('Submit'),
                    )
                    // ElevatedButton(
                    //   onPressed: addDataToFirestore,
                    //   child: const Text('Add to Firestore'),
                    // ),
                    // ElevatedButton(
                    //   onPressed: readDataFromFirestore,
                    //   child: const Text('REad from Firestore'),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget textFieldWithLabel(String title, {required Function onSaved}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              errorStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            onSaved: (newValue) => onSaved(newValue),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
