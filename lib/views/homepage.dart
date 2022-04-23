import 'package:flutter/material.dart';
import 'package:practice/views/bottom_nav_bar.dart';
import 'package:practice/widgets.dart/app_text_form_field.dart';
import 'package:practice/widgets.dart/home_view.dart';
import 'package:practice/widgets.dart/food_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find Best Recipe",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 35,
                ),
              ),
              const Text(
                "For Cooking ",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Expanded(child: AppTextFormField()),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.horizontal_distribute_outlined))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const FoodItem(),
              const SizedBox(
                height: 25,
              ),
              const HomeView(),
              const SizedBox(
                height: 22,
              ),
              const BottomNavBar()
            ],
          ),
        )));
  }
}
