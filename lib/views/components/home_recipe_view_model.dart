import 'package:practice/models/ingredients_models.dart';
import 'package:practice/models/recipe_model.dart';
import 'package:practice/services/recipe_services.dart';
import 'package:practice/widgets.dart/base_view_model.dart';

class HomeRecipeModel extends BaseViewModel {
  static final RecipeService _recipeServices = RecipeService();
  List<RecipeModel> item = [];
  List<IngredientModel> list = [];

  getItem() async {
    setBusy(ViewState.Busy);
    print("I'm on it");
    item = await _recipeServices.getRecipe();
    print("i am in");
    setBusy(ViewState.Idle);
  }
}
