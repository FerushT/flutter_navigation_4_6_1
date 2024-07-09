import 'package:flutter/material.dart';
import 'package:flutter_navigation_4_6_1/models/class_product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details ${product.name}"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(product.name, style: const TextStyle(fontSize: 24)),
            Text(
              product.description,
              style: const TextStyle(fontSize: 15),
            ),
            Text(
                "Preis: ${product.price.toStringAsFixed(2).replaceAll(".", ",")} €"),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("zurück zum Home Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
