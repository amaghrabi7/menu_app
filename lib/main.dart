import 'package:flutter/material.dart';
import 'models/food.dart';
import 'widgets/food_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
          centerTitle: true,
        ),
        body: ListView(
          children: Food.foods.map((food) => FoodCard(food: food)).toList(),
        ),
      ),
    );
  }
}
