
import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/routes.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    Map<String, String> formData = {
      "name": "",
      "dateOfBirth": "",
    };

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: MyColors.redPrimary,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                textFieldWithLabel("Your Name"),
                textFieldWithLabel("Date of Birth"),
                textFieldWithLabel("Age"),
                textFieldWithLabel("Prevailing Health Conditions"),
                textFieldWithLabel("Blood Group"),
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      print("Valid");
                      _formKey.currentState!.save();
                      Navigator.pushNamed(context, Routes.home);
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textFieldWithLabel(String title) {
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
              // formData["name"] =
              print(newValue)
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
