import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/routes.dart';
import 'package:bloodbank_app/constants/shared_prefs.dart';
import 'package:bloodbank_app/utils/firestore_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  // FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> addDataToSharedPrefs() async {
    if (_formKey.currentState!.validate()) {
      print("Valid");
      _formKey.currentState!.save();
      // prefs.setString(key, value)

      await createFirestoreData();
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

  Future<void> createFirestoreData() async {
    var response = FireStoreMethods.updateOrCreateFirestoreData(
      (prefs.getString(SharedPrefsConstant.name.toString()) ?? "No Name") +
          DateTime.now().millisecondsSinceEpoch.toString(),
      "users",
      {
        "name": prefs.getString(SharedPrefsConstant.name.toString()),
        "dateOfBirth":
            prefs.getString(SharedPrefsConstant.dateOfBirth.toString()),
        "age": prefs.getString(SharedPrefsConstant.age.toString()),
        "healthConditions":
            prefs.getString(SharedPrefsConstant.healthConditions.toString()),
        "bloodGroup":
            prefs.getString(SharedPrefsConstant.bloodGroup.toString()),
      },
      isMerge: false,
    );
    debugPrint(response.toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    onInit();
    super.initState();
  }

  // declaring a function so that the initState can call it without asynchrony
  void onInit() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top,
            color: MyColors.redPrimary,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  textFieldWithLabel(
                    "Your Name",
                    userDataFieldKey: SharedPrefsConstant.name,
                  ),
                  textFieldWithLabel(
                    "Date of Birth",
                    userDataFieldKey: SharedPrefsConstant.dateOfBirth,
                  ),
                  textFieldWithLabel(
                    "Age",
                    userDataFieldKey: SharedPrefsConstant.age,
                  ),
                  textFieldWithLabel(
                    "Prevailing Health Conditions",
                    userDataFieldKey: SharedPrefsConstant.healthConditions,
                  ),
                  textFieldWithLabel(
                    "Blood Group",
                    userDataFieldKey: SharedPrefsConstant.bloodGroup,
                  ),
                  ElevatedButton(
                    onPressed: addDataToSharedPrefs,
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
    );
  }

  Widget textFieldWithLabel(String title, {required String userDataFieldKey}) {
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
            onSaved: (newValue) => {
              newValue != null && newValue.isNotEmpty
                  ? prefs.setString(
                      userDataFieldKey,
                      newValue,
                    )
                  : prefs.setString(userDataFieldKey, ""),
              print(userDataFieldKey),
            },
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
