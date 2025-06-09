import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/food_item.dart';
import '../providers/cart_provider.dart';

class FoodDetailScreen extends StatelessWidget {
  static const routeName = '/food-detail';
  const FoodDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as FoodItem;
    return Scaffold(
      appBar: AppBar(title: Text(item.name,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.white,fontStyle: FontStyle.italic),),backgroundColor: Colors.blueGrey,),
      body: Column(
        children: [
          Image.network(item.imageUrl),
          const SizedBox(height: 10),
          Text('\₹${item.price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Provider.of<CartProvider>(context, listen: false).addItem(item);
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Added to cart')));
            },
            child: const Text('Add to Cart',style: TextStyle(fontStyle: FontStyle.italic,),),
          ),
        ],
      ),
    );
  }
}
