import 'package:flutter/material.dart';
import 'package:flutter_navigation_4_6_1/models/class_product.dart';
import 'package:flutter_navigation_4_6_1/screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produkte"),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Schaue ein schönes Produkt an, \nindem du auf den FAB drückst",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return DetailScreen(
                  name: schuhe.name,
                  price: schuhe.price,
                  description: schuhe.name);
            }),
          );
        },
        child: const Icon(Icons.person),
      ),
    );
  }
}
