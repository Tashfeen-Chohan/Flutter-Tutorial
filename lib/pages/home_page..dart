import 'package:flutter/material.dart';
import 'package:flutter_codepur/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Tashfeen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Catalog"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Text("Welcome to $days days of Flutter development by $name"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
