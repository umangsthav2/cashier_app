import 'package:cashier_app_source/screens/leaderboard.dart';
import 'package:cashier_app_source/screens/bonus.dart';
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
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}