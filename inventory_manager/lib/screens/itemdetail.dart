import 'package:flutter/material.dart';
import 'package:inventory_manager/models/item.dart';

class ItemDetailPage extends StatelessWidget {
  final Item item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Tier: ${item.fields.tier}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Price: ${item.fields.price}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Amount: ${item.fields.amount}',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Description: ${item.fields.description}',
                style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
