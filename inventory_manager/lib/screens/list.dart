import 'package:flutter/material.dart';
import 'package:inventory_manager/widgets/left_drawer.dart';
import 'package:inventory_manager/widgets/shop_card.dart';

class ListPage extends StatelessWidget {
  final List<Item> itemList;

  ListPage(this.itemList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lihat Item'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            Item item = itemList[index];
            return ListTile(
              title: Text(item.name),
              subtitle: Text(
                  'Jumlah: ${item.amount}, Deskripsi: ${item.description}'),
            );
          },
        ),
      ),
    );
  }
}
