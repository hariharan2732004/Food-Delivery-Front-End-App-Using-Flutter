import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    final items = cart.items.values.toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Your Cart',style: TextStyle(fontSize:25,fontWeight:FontWeight.bold,color: Colors.white,fontStyle: FontStyle.italic,)),backgroundColor: Colors.blueGrey,),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (ctx, i) => ListTile(
                title: Text(items[i].name),
                trailing: Text('\₹${items[i].price.toStringAsFixed(2)}'),
                leading: IconButton( color: Colors.blueGrey,
                  icon: const Icon(Icons.delete),
                  onPressed: () => cart.removeItem(items[i].id),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Total: \₹${cart.totalAmount.toStringAsFixed(2)}', style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: cart.items.isEmpty ? null : () => cart.clearCart(),
                  child: const Text('Checkout',style: TextStyle(fontStyle:FontStyle.italic ),),

                ),
    ElevatedButton(
    onPressed: cart.items.isEmpty ? null : (){ ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Try Again')));},
    child: const Text('Pay now',style: TextStyle(fontStyle:FontStyle.italic ),),)

              ],
            ),
          ),
        ],
      ),
    );
  }
}
