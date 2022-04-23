class IngredientModel {
  final String image;
  final String amount;
  final String name;

  IngredientModel({
    required this.amount,
    required this.name,
    required this.image,
  });

  factory IngredientModel.fromJson(Map<String, dynamic> json) {
    return IngredientModel(
      amount: json["text"],
      name: json["food"],
      image: json["image"],
    );
  }
  Map<String, dynamic> toJson() => {
        "text": amount,
        "food": name,
        "image": image,
      };
}
