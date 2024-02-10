// To parse this JSON data, do
//
//     final singleRecipe = singleRecipeFromJson(jsonString);

import 'dart:convert';

SingleRecipe singleRecipeFromJson(String str) => SingleRecipe.fromJson(json.decode(str));

String singleRecipeToJson(SingleRecipe data) => json.encode(data.toJson());

class SingleRecipe {
    List<Map<String, String?>> meals;

    SingleRecipe({
        required this.meals,
    });

    factory SingleRecipe.fromJson(Map<String, dynamic> json) => SingleRecipe(
        meals: List<Map<String, String?>>.from(json["meals"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
    );

    Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    };
}
