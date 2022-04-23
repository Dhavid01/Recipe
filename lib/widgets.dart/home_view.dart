import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/views/components/home_recipe_view_model.dart';
import 'package:practice/views/food_details.dart';
import 'package:practice/views/food_view.dart';

final _foodCartProvider = ChangeNotifierProvider((ref) => HomeRecipeModel());

class FoodCart extends ConsumerStatefulWidget {
  const FoodCart({Key? key}) : super(key: key);
  @override
  ConsumerState<FoodCart> createState() => _FoodCartState();
}

class _FoodCartState extends ConsumerState<FoodCart> {
  @override
  initState() {
    final model = ref.read(_foodCartProvider);
    Future.delayed(const Duration(seconds: 2), () => model.getItem());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(_foodCartProvider);
    return Expanded(
      child: ListView.builder(
          itemCount: model.item.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodDetails(
                                recipeModel: model.item[index],
                                food: model.item[index].recipe,
                                image: model.item[index].image,
                                number:
                                    "Ingredients(${model.item[index].ingredient.length})",
                              ))),
                  child: FoodView(
                    source: model.item[index].source,
                    food: model.item[index].recipe,
                    image: model.item[index].image,
                    text: "${model.item[index].ingredient.length} Ingredients",
                    time: "${model.item[index].time} mins",
                  ),
                ),
              )),
    );
  }
}
