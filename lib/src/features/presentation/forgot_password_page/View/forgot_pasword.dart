import 'package:flutter/material.dart';
import 'package:curso_delivery_app/src/colors/colors.dart';

import 'package:curso_delivery_app/src/features/presentation/common-widgets/alert_dialog.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/back_button.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/rounded_button.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/header_text.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
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
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              headerText(
                  texto: "Forgot your password?",
                  color: primaryColor,
                  fontSize: 30.0),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  "Please enter your email address.  You will receive a link to create a new password via email.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              _emailInput(),
              roundedButton(
                  context: context,
                  labelButton: "Send",
                  color: orange,
                  func: () => _ShowAlerta(context)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(142, 142, 247, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Your Email",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

// ignore: unused_element, non_constant_identifier_names
void _ShowAlerta(BuildContext context) {
  showAlertDialog(
    context,
    const AssetImage("assets/lock.png"),
    "Your password has been reset.",
    "You'll shortly receive an email with a code to setup a mew password.'",
    roundedButton(
        context: context,
        labelButton: 'Done',
        color: orange,
        func: () {
          Navigator.pushNamed(context, "login");
        }),
  );
}
