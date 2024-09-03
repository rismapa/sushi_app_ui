import 'package:flutter/material.dart';
import 'package:sushi_app_ui/models/food.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
    Food(
        name: "Sushi Tori",
        imagePath: "assets/images/sushi3.png",
        rating: 4.5,
        price: 21.00),
    Food(
        name: "Sushi Tuna",
        imagePath: "assets/images/sushi4.png",
        rating: 4.3,
        price: 19.00),
    Food(
        name: "Sushi Salmon",
        imagePath: "assets/images/sushi5.png",
        rating: 4.9,
        price: 25.00),
  ];

  // customer cart
  final List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to chart
  void addToChart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
