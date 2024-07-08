import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final double price;
  final String description;

  const DetailScreen(
      {super.key,
      required this.name,
      required this.price,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details $name"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(name, style: TextStyle(fontSize: 24)),
            Text(
              description,
              style: TextStyle(fontSize: 15),
            ),
            Text("Preis: $price €"),
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
