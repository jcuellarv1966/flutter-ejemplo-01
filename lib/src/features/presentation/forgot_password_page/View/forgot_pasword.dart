import 'package:curso_delivery_app/src/features/presentation/common-widgets/alert_dialog.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/back_button.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/done_button.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/header_text.dart';
import 'package:flutter/material.dart';

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
              headerText("Forgot your password?",
                  Theme.of(context).primaryColor, FontWeight.bold, 30.0),
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
              _sendButton(context),
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

Widget _sendButton(BuildContext context) {
  return Container(
      width: 370.0,
      height: 36.0,
      margin: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            // side: BorderSide(color: Colors.yellow, width: 5),
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 16, fontStyle: FontStyle.normal),
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          onPressed: () {
            _ShowAlerta(context);
          },
          child: const Align(
            alignment: Alignment.center,
            child: Text("Send",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center),
          )));
}

// ignore: unused_element, non_constant_identifier_names
void _ShowAlerta(BuildContext context) {
  showAlertDialog(
      context,
      const AssetImage("assets/lock.png"),
      "Your password has been reset.",
      "You'll shortly receive an email with a code to setup a mew password.'",
      doneButton(context, "Done"));
}
