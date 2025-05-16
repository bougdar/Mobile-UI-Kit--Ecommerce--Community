class Product {
  int id;
  String name;
  String type;
  double price;
  String image;

  Product({
    required this.id,
    required this.name,
    required this.type,
    required this.price,
    required this.image, // <-- Add this line
  });
}
