import 'package:practice/models/ingredients_models.dart';

class RecipeModel {
  final String recipe;
  final List<IngredientModel> ingredient;
  final String image;
  final String source;
  final double time;

  RecipeModel(
      {required this.recipe,
      required this.source,
      required this.time,
      required this.ingredient,
      required this.image});

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      recipe: json["label"],
      image: json["image"],
      source: json["source"],
      time: json["totalTime"],
      ingredient: List.from(
          json["ingredients"].map((e) => IngredientModel.fromJson(e))),
    );
  }
  Map<String, dynamic> toJson() => {
        "label": recipe,
        "image": image,
        "ingredients": ingredient,
        "totalTime": time,
        "source": source,
      };
}
