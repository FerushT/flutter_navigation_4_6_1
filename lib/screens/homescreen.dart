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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Schaue ein schönes Produkt an, \nindem du auf den FAB drückst",
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailScreen(product: products[index]);
                              },
                            ),
                          );
                        },
                        leading: const Icon(Icons.shopping_bag),
                        title: Text(products[index].name),
                        subtitle: Text(products[index].description),
                        trailing: Text(
                          "${products[index].price.toStringAsFixed(2).replaceAll(".", ",")} €",
                        ),
                        shape: Border.all(
                          color: Colors.black12,
                        ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
