import "package:flutter/material.dart";
import 'package:flutter_codepur/pages/home_page.dart';
import "package:flutter_codepur/pages/login_page.dart";
import "package:flutter_codepur/utils/routes.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
