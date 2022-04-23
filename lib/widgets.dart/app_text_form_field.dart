import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search_outlined),
            hintText: "Search Destination",
            border: InputBorder.none),
      ),
    );
  }
}
