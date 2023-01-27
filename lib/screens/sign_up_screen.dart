import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _signUpFormKey = GlobalKey<FormState>();
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Form(
            key: _signUpFormKey,
            child: Column(
              children: [
                customFormWidget(),
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_signUpFormKey.currentState!.validate()) {
                      print("valid");
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget customFormWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Name",
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ],
    );
  }
}
