class Product {
  String name;
  double price;
  String description;

  Product({
    required this.name,
    required this.price,
    required this.description,
  });
}

final List<Product> products = [
  Product(
    name: "Sneakers",
    description: "Schöne Sneakers mit einem modernen Fit",
    price: 169.99,
  ),
  Product(
    name: "T-Shirt",
    description: "Ein T-Shirt aus 100% Baumwolle",
    price: 29.99,
  ),
  Product(
    name: "Hose",
    description: "Eine gemütliche Hosen mit Elastan",
    price: 59.99,
  ),
  Product(
    name: "Hemd",
    description: "Ein Hemd das wirklich gut passt",
    price: 49.99,
  ),
  Product(
    name: "Pullover",
    description: "Ein Pullover aus 100% Baumwolle",
    price: 79.99,
  ),
];
