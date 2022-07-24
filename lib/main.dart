import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx/screens/login_screen.dart';
import 'package:olx/screens/splash_screen.dart';

void main() async {
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "OLX",
      theme: ThemeData(
          primaryColor: Colors.cyan.shade800,
          fontFamily: 'Edu SA Beginner',
          primarySwatch: Colors.cyan),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
