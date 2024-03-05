import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/features/presentation/tabs/tabs_page.dart';
import 'package:curso_delivery_app/src/features/presentation/filter_page/View/filter_page.dart';
import 'package:curso_delivery_app/src/features/presentation/forgot_password_page/View/forgot_pasword.dart';
import 'package:curso_delivery_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:curso_delivery_app/src/features/presentation/search_page/View/search_view.dart';
import 'package:curso_delivery_app/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:curso_delivery_app/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:curso_delivery_app/src/features/presentation/filter_page/customWidgets/categories_filters.dart';
import 'package:curso_delivery_app/src/features/presentation/categories_page/View/categories_page.dart';
import 'package:curso_delivery_app/src/features/presentation/categorie_detail_page/View/categorie_detail_page.dart';
import 'package:curso_delivery_app/src/features/presentation/asset_detail_page/View/asset_detail_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => const LoginPage(),
  'forgot-password': (BuildContext context) => const ForgotPassword(),
  'sign-up': (BuildContext context) => const SignUpPage(),
  'tabs': (BuildContext context) => const TabsPage(),
  'search': (BuildContext context) => const SearchPage(),
  'filter': (BuildContext context) => const FilterPage(),
  'filter-categories': (BuildContext context) => const CategoriesFilter(),
  'categories': (BuildContext context) => const CategoriesPage(),
  'categorie-detail': (BuildContext context) => const CategorieDetailPage(),
  'asset-detail': (BuildContext context) => const AssetDetailPage(),
};
