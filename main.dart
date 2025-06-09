import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/food_item.dart';
import 'providers/cart_provider.dart';
import 'screens/home_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/food_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (_) => CartProvider(),
      child: MaterialApp(
        title: ("Food Delivery App"),
        theme: ThemeData(
          primarySwatch: Colors.orange,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        routes: {
          CartScreen.routeName: (ctx) => const CartScreen(),
          FoodDetailScreen.routeName: (ctx) => const FoodDetailScreen(),
        },
      ),
    );
  }
}
