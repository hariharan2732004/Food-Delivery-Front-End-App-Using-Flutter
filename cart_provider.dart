import 'package:flutter/material.dart';
import '../models/food_item.dart';

class CartProvider with ChangeNotifier {
  final Map<String, FoodItem> _items = {};

  Map<String, FoodItem> get items => _items;

  double get totalAmount => _items.values.fold(0.0, (sum, item) => sum + item.price);

  void addItem(FoodItem item) {
    _items[item.id] = item;
    notifyListeners();
  }

  void removeItem(String id) {
    _items.remove(id);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
