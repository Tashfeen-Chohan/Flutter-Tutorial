import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amberAccent,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                accountName: const Text(
                  "Tashfeen Chohan",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "chohantashfeen@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.asset(
                  "assets/images/profile.jpg",
                ),
              )),
          const ListTile(leading: Icon(Icons.home), title: Text("Home")),
          const ListTile(leading: Icon(Icons.info), title: Text("About")),
          const ListTile(leading: Icon(Icons.login), title: Text("Login")),
        ],
      ),
    );
  }
}
