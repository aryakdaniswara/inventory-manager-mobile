import 'package:flutter/material.dart';
import 'package:inventory_manager/screens/menu.dart';
import 'package:inventory_manager/screens/itemform.dart';
import 'package:inventory_manager/screens/list_item.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'inventory_manager',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "An Inventory!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          // TODO: Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Add Item'),
            // Bagian redirection ke ItemFormPage
            onTap: () {
              /*
              TODO: Buatlah routing ke ItemFormPage di sini,
              setelah halaman ItemFormPage sudah dibuat.
              */
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ItemFormPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.list_alt_rounded),
            title: const Text('View Items'),
            // Bagian redirection ke ItemFormPage
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ItemPage()));
            },
          ),
        ],
      ),
    );
  }
}
