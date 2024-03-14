import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
              child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amberAccent,
            ),
            accountName: Text(
              "Tashfeen Chohan",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              "chohantashfeen@gmail.com",
              style: TextStyle(color: Colors.black),
            ),
          ))
        ],
      ),
    );
  }
}
