import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:inventory_manager/models/item.dart';
import 'package:inventory_manager/widgets/drawer.dart';
import 'package:inventory_manager/screens/itemform.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:inventory_manager/screens/itemdetail.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  Future<List<Item>> fetchItem() async {
    final request = context.watch<CookieRequest>();
    var response = await request
        .get('https://arya-kusuma-tugas.pbp.cs.ui.ac.id/get-user-item-json/');

    var data = response;
    // melakukan konversi data json menjadi object Item
    List<Item> list_Item = [];
    for (var d in data) {
      if (d != null) {
        list_Item.add(Item.fromJson(d));
      }
    }

    return list_Item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
          future: fetchItem(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData) {
              return const Center(child: Text("No data found."));
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) {
                    var item = snapshot.data![index];
                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          item.fields.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Tier: ${item.fields.tier}'),
                            Text('Price: ${item.fields.price}'),
                            Text('Amount: ${item.fields.amount}'),
                            Text('Description: ${item.fields.description}'),
                          ],
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    ItemDetailPage(item: item),
                              ),
                            );
                          },
                        ),
                        isThreeLine: false, // Adjust as needed
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                      ),
                    );
                  });
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ItemFormPage()),
          );
        },
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
