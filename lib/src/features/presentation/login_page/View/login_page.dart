import 'package:curso_delivery_app/src/features/presentation/common-widgets/Buttons/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';
import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/BackButtons/back_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white,
    ));

    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            const Image(
              width: double.infinity,
              height: 320.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1640340434855-6084b1f4901c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjN8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: backButton(context, Colors.white),
            )
          ],
        ),
        // ignore: avoid_unnecessary_containers
        Transform.translate(
            offset: const Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                    child: Column(
                  children: [
                    headerText(
                        texto: "Welcome Back",
                        color: primaryColor,
                        fontSize: 30.0),
                    const Text("Login to your account",
                        style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                        )),
                    _emailInput(),
                    _passwordInput(),
                    roundedButton(
                        context: context,
                        labelButton: "Log in",
                        color: orange,
                        func: () {
                          Navigator.pushNamed(context, "tabs");
                        }),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.pushNamed(context, "forgot-password");
                        }),
                        child: const Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                                color: gris,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "sign-up");
                            },
                            child: const Text(
                              "  Sign up",
                              style: TextStyle(
                                  color: orange,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            )),
      ],
    ));
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(20.0)),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Email",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: const EdgeInsets.only(top: 15.0),
    padding: const EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(20.0)),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}
