import 'package:flutter/material.dart';
import '../models/food.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  FoodCard({required this.food, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  food.name,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  food.description ?? "",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                food.imgPath,
                height: 120,
                width: 150,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
