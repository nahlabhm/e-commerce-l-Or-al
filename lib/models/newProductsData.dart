import 'package:flutter/material.dart';

class Product  {
  final String name, imageUrl;
  final String description;
  final String price;
    int quantity;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
        this.quantity = 0, // Provide default value for quantity

  });
}
class Shop extends ChangeNotifier {
 final List<Product> _shop = [
  Product(
    name: 'Highlight L\'Oréalb ',
    description: 'Highlight Palette',
    price: '50.00',
    imageUrl: 'assets/images/d89709b8eef227e790476a9347da8773.jpg',
  ),
  Product(
    name: 'Lip  L\'Oréal',
    description: 'Lib Gloss',
    price: '20.00',
    imageUrl: 'assets/images/eb2cb4b374317991318fe60670ddc387.jpg',
  ),
Product(
    name: 'Fondation L\'Oréal',
    description: 'Fondation',
    price: '50.00',
    imageUrl: 'assets/images/783cd248b9cdbb72c6e9f8a96c9075fb.jpg',
),
Product(
    name: 'Mascara L\'Oréal',
    description: 'Mascara',
    price: '50.00',
    imageUrl: 'assets/images/0e15099d6bff4662c917656e1519d9d2.jpg',
),
];

  List<Product> _cart=[];

  List<Product> get shop=>_shop;

  List<Product> get cart=>_cart;

  void addtocart(Product item){
    _cart.add(item);
    notifyListeners();
  }

  void removetocart(Product item){
    _cart.remove(item);
        notifyListeners();

  }
}
