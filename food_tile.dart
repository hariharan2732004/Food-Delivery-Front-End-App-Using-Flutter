import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../screens/food_detail_screen.dart';

class FoodTile extends StatelessWidget {
  final FoodItem item;
  const FoodTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        leading: Image.network(item.imageUrl, width: 50, fit: BoxFit.cover),
        title: Text(item.name),
        subtitle: Text('\₹${item.price.toStringAsFixed(2)}'),
        onTap: () => Navigator.pushNamed(
          context,
          FoodDetailScreen.routeName,
          arguments: item,
        ),
      ),
    );
  }
}
