// ignore_for_file: sort_child_properties_last, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_codepur/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool loginButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Catalog"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_img.jpg",
              fit: BoxFit.contain,
              width: 200,
              height: 200,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        hintText: "Please enter username!",
                        labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Please enter password",
                        labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    child: loginButton
                        ? const Icon(Icons.done)
                        : const Text("Login"),
                    style:
                        TextButton.styleFrom(minimumSize: const Size(100, 40)),
                    onPressed: () async {
                      setState(() {
                        loginButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
