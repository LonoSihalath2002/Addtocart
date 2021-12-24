
class Product {
  final String name;
  final double price;
  final String image;



  const Product({required this.name, required this.price, required this.image});

  static const List<Product> products = [
  Product(
    name: 'Product1',
    price: 3.99, 
    image: 'images/Headphones.png'),
  Product(
    name: 'Product2',
    price: 3.99, 
    image: 'images/Headphones1.jpg'),
  Product(
    name: 'Product3',
    price: 3.99, 
    image: 'images/Headphones2.jpg'),
  Product(
    name: 'Product4',
    price: 3.99, 
    image: 'images/Headphones3.jpg'),
];
}


