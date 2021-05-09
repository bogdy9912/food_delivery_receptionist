import 'package:flutter/material.dart';



ThemeData appThemeData(BuildContext context) {
  return ThemeData(

    appBarTheme: AppBarTheme.of(context).copyWith(
//      color: Colors.transparent,
//        elevation: 0,
//        backgroundColor: Colors.transparent,
//        iconTheme: const IconThemeData(color: Colors.black),
//
//        textTheme: const TextTheme(headline6: TextStyle(color: Colors.black))
    ),
  );
}