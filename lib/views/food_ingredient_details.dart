import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:practice/models/recipe_model.dart';
import 'package:practice/widgets.dart/recipe_card.dart';

class FoodIngredientDetails extends StatelessWidget {
  FoodIngredientDetails({
    Key? key,
    required this.image,
    required this.food,
    required this.number,
    required this.recipeModel,
  }) : super(key: key);
  final String image;
  final String food;
  final String number;
  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Padding(
            padding: const EdgeInsets.all(34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 60),
                    Expanded(
                        child: Text(food,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 30))),
                    const Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                        imageUrl: image,
                        fit: BoxFit.cover,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                            child: const Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      number,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Container(
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "1 Serving ",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_downward_rounded,
                              color: Colors.white,
                              size: 20,
                            )
                          ],
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: SizedBox(
                    child: ListView.builder(
                      itemCount: recipeModel.ingredient.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: RecipeCard(
                          text: recipeModel.ingredient[index].amount,
                          name: recipeModel.ingredient[index].name,
                          image: recipeModel.ingredient[index].image,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Positioned(
          left: 5,
          right: 5,
          bottom: 0,
          child: Stack(children: [
            Container(
              height: 85,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 65,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Start Cook!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.arrow_right_alt_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        )
      ]),
    ));
  }
}
