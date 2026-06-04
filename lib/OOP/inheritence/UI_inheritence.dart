// class FoodItem {
//   String name;
//   String image;
//   int price;

//   FoodItem(this.name, this.image, this.price);
// }

import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodScreen(),
    );
  }
}

// ================= PARENT CLASS =================

class FoodItem {
  String name;
  double price;
  double rating;
  String image;

  FoodItem({
    required this.name,
    required this.price,
    required this.rating,
    required this.image,
  });
}

// ================= CHILD CLASSES =================

class Burger extends FoodItem {
  Burger()
    : super(
        name: "Zinger Burger",
        price: 500,
        rating: 4.8,
        image: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd",
      );
}

class Pizza extends FoodItem {
  Pizza()
    : super(
        name: "Cheese Pizza",
        price: 1200,
        rating: 4.6,
        image: "https://images.unsplash.com/photo-1513104890138-7c749659a591",
      );
}

class Drink extends FoodItem {
  Drink()
    : super(
        name: "Cold Drink",
        price: 150,
        rating: 4.5,
        image: "https://images.unsplash.com/photo-1622483767028-3f66f32aef97",
      );
}

// ================= UI SCREEN =================

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<FoodItem> foodItems = [Burger(), Pizza(), Drink()];

    return Scaffold(
      appBar: AppBar(title: const Text("Food Menu"), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final food = foodItems[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(blurRadius: 5, color: Colors.grey.shade300),
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    food.image,
                    height: 90,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        "Rs ${food.price}",
                        style: const TextStyle(fontSize: 16),
                      ),

                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.orange),
                          const SizedBox(width: 5),
                          Text(food.rating.toString()),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
