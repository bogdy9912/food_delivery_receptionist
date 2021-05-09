// ignore: avoid_classes_with_only_static_members
import 'package:flutter/widgets.dart';
import 'package:food_delivery_receptionist/src/presentation/home.dart';

class AppRoutes {
  static const String home = '/';


  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),


  };
}