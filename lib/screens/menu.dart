import 'package:flutter/material.dart';
import 'package:inventory_manager/widgets/drawer.dart';
import 'package:inventory_manager/widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
    ShopItem("View Items", Icons.list_alt_rounded),
    ShopItem("Add Item", Icons.add_shopping_cart),
    ShopItem("Logout", Icons.logout),
  ];

  // Define a list of colors
  final List<Color> cardColors = [
    Color.fromARGB(255, 13, 104, 52),
    Color.fromARGB(255, 59, 104, 140),
    Color.fromARGB(255, 53, 44, 97),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'inventory_manager',
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'inventory_manager',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.asMap().entries.map((entry) {
                  final index = entry.key;
                  final item = entry.value;

                  final cardColor = cardColors[index % cardColors.length];
                  return ShopCard(item, cardColor);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
