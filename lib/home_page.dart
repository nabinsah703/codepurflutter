import 'package:codepurflutter/models/catalog.dart';
import 'package:codepurflutter/widgets/item_widget.dart';
import 'package:codepurflutter/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalog App',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            // jaha jaha comment x tyaslai hatye paxi tyas mathi ko hataunu parxa
            // itemCount: CatalogModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
                // item: CatalogModel.items[index],
              );
            }),
      ),
      drawer: const MyDrawer(),
    );
  }
}
