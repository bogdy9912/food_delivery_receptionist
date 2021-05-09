// ignore: avoid_classes_with_only_static_members
import 'package:flutter/widgets.dart';
import 'package:food_delivery_receptionist/src/presentation/home.dart';
import 'package:food_delivery_receptionist/src/presentation/login/login_page.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String login = '/login';


  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    login: (BuildContext context) => const LoginPage(),


  };
}