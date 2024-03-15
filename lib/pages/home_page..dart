import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codepur/models/catalog.dart';
import 'package:flutter_codepur/widgets/drawer.dart';
import 'package:flutter_codepur/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Catalog"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
