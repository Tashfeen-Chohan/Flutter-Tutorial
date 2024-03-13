import "package:flutter/material.dart";
import "package:flutter_codepur/pages/home_page..dart";
import "package:flutter_codepur/pages/login_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}
