import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice/models/exceptions/Failure.dart';
import 'package:practice/models/recipe_model.dart';

class RecipeService {
  Future<List<RecipeModel>> getRecipe() async {
    try {
      http.Response response = await http.get(
        Uri.parse(
            "https://api.edamam.com/search?app_id=045beb36&app_key=8367ae8d26be6a790b175a45df519012&q=sushi"),
      );
      final result = jsonDecode(response.body)["hits"];
      print(result);
      final List<RecipeModel> recipe = List<RecipeModel>.from(
          result.map((e) => RecipeModel.fromJson(e["recipe"])));
      return recipe;
    } on Failure {
      rethrow;
    }
  }
}
