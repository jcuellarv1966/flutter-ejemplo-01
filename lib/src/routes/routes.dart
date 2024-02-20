import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:curso_delivery_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:curso_delivery_app/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:curso_delivery_app/src/features/presentation/forgot_password_page/View/forgot_pasword.dart';

import 'package:curso_delivery_app/src/features/presentation/tabs/tabs_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => const LoginPage(),
  'forgot-password': (BuildContext context) => const ForgotPassword(),
  'sign-up': (BuildContext context) => const SignUpPage(),
  'tabs': (BuildContext context) => const TabsPage(),
};
