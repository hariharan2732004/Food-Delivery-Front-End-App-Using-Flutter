import 'package:flutter/cupertino.dart';

class FoodItem {
  final String id;
  final String name;
  final String imageUrl;
  final double price;

  FoodItem({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  static List<FoodItem> sampleItems = [
    FoodItem(
      id: '1',
      name: 'Chicken Biriyani',
      imageUrl: 'https://th.bing.com/th/id/OIP.er1Gr9IUMiCMtFeZdSHdAAHaE8?rs=1&pid=ImgDetMain',
      price: 150.0,
    ),
    FoodItem(
      id: '2',
      name: 'Veg Meals',
      imageUrl: 'https://st2.depositphotos.com/5653638/11520/i/450/depositphotos_115207410-stock-photo-indian-thali-indian-food-thali.jpg',
      price: 130,
    ),
    FoodItem(
      id: '3',
      name: 'Chicken Fried Rice',
      imageUrl: 'https://wallpapercave.com/wp/wp9481144.jpg',

      price: 100.0,

    ),
  FoodItem(
  id: '4',
  name: 'Dosa',
  imageUrl: 'https://c.ndtvimg.com/2023-05/3rikofk8_dosa_625x300_09_May_23.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=675',
  price: 80,
  ),
  ];
}
