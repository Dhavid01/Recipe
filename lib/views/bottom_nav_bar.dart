import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(Icons.home_rounded),
        Icon(
          Icons.bookmark_rounded,
          color: Colors.grey.withOpacity(0.5),
          size: 24,
        ),
        Icon(
          Icons.card_travel,
          color: Colors.grey.withOpacity(0.5),
          size: 24,
        ),
        Icon(
          Icons.person,
          color: Colors.grey.withOpacity(0.5),
          size: 24,
        )
      ],
    );
  }
}
