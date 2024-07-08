class Product {
  final String name;
  final double price;
  final String description;

  Product({required this.name, required this.price, required this.description});
}

Product schuhe =
    Product(name: "Sportschuhe", price: 29.99, description: "Sauber");
Product hose =
    Product(name: "hose", price: 79.99, description: "Baumwolle 90 %");
Product hosentraeger =
    Product(name: "hosentraeger", price: 19.99, description: "elastisch");
