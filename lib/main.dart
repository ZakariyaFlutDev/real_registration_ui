import 'package:flutter/material.dart';
import 'package:real_registration_ui/pages/home_page.dart';
import 'package:real_registration_ui/pages/sign_in_page.dart';
import 'package:real_registration_ui/pages/sign_up_page.dart';
import 'package:real_registration_ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      routes: {
        HomePage.id:(context) => HomePage(),
        SplashPage.id:(context) => SplashPage(),
        SignInPage.id:(context) => SignInPage(),
        SignUpPage.id:(context) => SignUpPage(),
      },
    );
  }
}
