import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../widgets/food_tile.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final foods = FoodItem.sampleItems;
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: () { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Try it later...')));} ,child: Icon(Icons.edit),backgroundColor: Colors.blueGrey,foregroundColor: Colors.white,),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Food Delivery',style: TextStyle(fontSize:25,fontWeight:FontWeight.bold,color: Colors.white,fontStyle: FontStyle.italic,)),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart,color: Colors.white,),
            onPressed: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (ctx, i) => FoodTile(item: foods[i]),
      ),
    );
  }
}
