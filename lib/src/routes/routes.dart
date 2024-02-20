import 'package:curso_delivery_app/src/pages/sign_up_page.dart';
import 'package:curso_delivery_app/src/tabs/tabs_page.dart';
import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/pages/welcome_page.dart';
import 'package:curso_delivery_app/src/pages/login_page.dart';
import 'package:curso_delivery_app/src/pages/forgot_pasword.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => const LoginPage(),
  'forgot-password': (BuildContext context) => const ForgotPassword(),
  'sign-up': (BuildContext context) => const SignUpPage(),
  'tabs': (BuildContext context) => const TabsPage(),
};
