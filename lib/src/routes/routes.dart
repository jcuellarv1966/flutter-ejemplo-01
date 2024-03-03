import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/features/presentation/tabs/tabs_page.dart';
import 'package:curso_delivery_app/src/features/presentation/filter_page/View/filter_page.dart';
import 'package:curso_delivery_app/src/features/presentation/forgot_password_page/View/forgot_pasword.dart';
import 'package:curso_delivery_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:curso_delivery_app/src/features/presentation/search_page/View/search_view.dart';
import 'package:curso_delivery_app/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:curso_delivery_app/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:curso_delivery_app/src/features/presentation/filter_page/customWidgets/categories_filters.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => const LoginPage(),
  'forgot-password': (BuildContext context) => const ForgotPassword(),
  'sign-up': (BuildContext context) => const SignUpPage(),
  'tabs': (BuildContext context) => const TabsPage(),
  'search': (BuildContext context) => const SearchPage(),
  'filter': (BuildContext context) => const FilterPage(),
  'filter-categories': (BuildContext context) => const CategoriesFilter(),
};
