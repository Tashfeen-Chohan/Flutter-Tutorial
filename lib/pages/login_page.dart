import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            const Text(
              "Welcome to Login Page!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Column(
                children: [
                  TextFormField(
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
                  const SizedBox(height: 25,),
                  ElevatedButton(
                    child: const Text("Login"),
                    onPressed: () {
                      print("Hi");
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
