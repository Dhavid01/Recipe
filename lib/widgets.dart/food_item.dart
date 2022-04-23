import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(15)),
          child: const Center(
              child: Text("All",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600))),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: const Center(
              child: Text("Sushi",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600))),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: const Center(
              child: Text("Burger",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600))),
        ),
      ],
    );
  }
}
