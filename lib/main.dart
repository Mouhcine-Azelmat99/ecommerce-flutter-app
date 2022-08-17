// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/screens/checkout.dart';
import 'package:ecommerce_app/screens/login.dart';
import 'package:ecommerce_app/screens/products.dart';
import 'package:ecommerce_app/screens/register.dart';
import 'package:ecommerce_app/screens/show_product.dart';
import 'package:ecommerce_app/screens/welcome.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      initialRoute: "welcome",
      routes: {
        "login": (context) => Login(),
        "register": (context) => Register(),
        "home": (context) => HomePage(),
        "product": (context) => Show_Product(),
        "products": (context) => Products(),
        "checkout": (context) => Checkout(),
        "welcome": (context) => Welcome(),
      },
    );
  }
}
