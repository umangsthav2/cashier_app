import 'package:cashier_app_source/screens/forgot_password.dart';
import 'package:cashier_app_source/screens/home.dart';
import 'package:cashier_app_source/screens/otp.dart';
import 'package:cashier_app_source/screens/profile.dart';
import 'package:cashier_app_source/screens/register.dart';
import 'package:cashier_app_source/screens/success.dart';
import 'package:flutter/material.dart';

import 'screens/welcome.dart';
import 'utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cashier App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(primaryColor)),
      ),
      home: SuccessScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}