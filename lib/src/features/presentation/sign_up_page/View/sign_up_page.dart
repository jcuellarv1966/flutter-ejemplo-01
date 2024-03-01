import 'package:curso_delivery_app/src/features/presentation/common-widgets/rounded_button.dart';
import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/back_button.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/header_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              headerText(
                  "Create an Account", primaryColor, FontWeight.bold, 30.0),
              _usernameInput(context),
              _emailInput(context),
              _phoneInput(context),
              _dateOfBirthInput(context),
              _passwordInput(context),
              roundedButton(
                  context: context,
                  labelButton: "Sign Up",
                  color: orange,
                  func: () {}),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.2, vertical: 40.0),
                child: const Text(
                  "By clicking Sign up you agree to the following Terms and Conditions without reservations.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _usernameInput(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 10.0),
    height: 50,
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: "Username",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _emailInput(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 10.0),
    padding: const EdgeInsets.only(left: 10.0),
    height: 50,
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Email",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _phoneInput(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 10.0),
    padding: const EdgeInsets.only(left: 10.0),
    height: 50,
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: "Phone",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _dateOfBirthInput(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 10.0),
    padding: const EdgeInsets.only(left: 10.0),
    height: 50,
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          hintText: "Date of Birth",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 10.0),
    padding: const EdgeInsets.only(left: 10.0),
    height: 50,
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}
