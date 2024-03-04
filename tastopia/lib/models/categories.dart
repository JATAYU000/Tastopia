// import 'dart:convert';

// class Categories {
//     List<Category> categories;

//     Categories({
//         required this.categories,
//     });

//     factory Categories.fromJson(String str) => Categories.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Categories.fromMap(Map<String, dynamic> json) => Categories(
//         categories: List<Category>.from(json["categories"].map((x) => Category.fromMap(x))),
//     );

//     Map<String, dynamic> toMap() => {
//         "categories": List<dynamic>.from(categories.map((x) => x.toMap())),
//     };
// }

class Category {
    String strCategory;
    String strCategoryThumb;

    Category({
        required this.strCategory,
        required this.strCategoryThumb,
    });
}



List<Category> CatData = [
  Category(strCategory: "Beef", strCategoryThumb: "https://www.themealdb.com/images/category/beef.png"),
  Category(strCategory: "Chicken", strCategoryThumb: "https://www.themealdb.com/images/category/chicken.png"),
  Category(strCategory: "Dessert", strCategoryThumb: "https://www.themealdb.com/images/category/dessert.png"),
  Category(strCategory: "Lamb", strCategoryThumb: "https://www.themealdb.com/images/category/lamb.png"),
  Category(strCategory: "Misc", strCategoryThumb: "https://www.themealdb.com/images/category/miscellaneous.png"),
  Category(strCategory: "Pasta", strCategoryThumb: "https://www.themealdb.com/images/category/pasta.png"),
  Category(strCategory: "Pork", strCategoryThumb: "https://www.themealdb.com/images/category/pork.png"),
  Category(strCategory: "Seafood", strCategoryThumb: "https://www.themealdb.com/images/category/seafood.png"),
  Category(strCategory: "Side", strCategoryThumb: "https://www.themealdb.com/images/category/side.png"),
  Category(strCategory: "Starter", strCategoryThumb: "https://www.themealdb.com/images/category/starter.png"),
  Category(strCategory: "Vegan", strCategoryThumb: "https://www.themealdb.com/images/category/vegan.png"),
  Category(strCategory: "Vegetarian", strCategoryThumb: "https://www.themealdb.com/images/category/vegetarian.png"),
  Category(strCategory: "Breakfast", strCategoryThumb: "https://www.themealdb.com/images/category/breakfast.png"),
  Category(strCategory: "Goat", strCategoryThumb: "https://www.themealdb.com/images/category/goat.png"),
  Category(strCategory: "", strCategoryThumb: ""),

];

//     factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Category.fromMap(Map<String, dynamic> json) => Category(
//         idCategory: json["idCategory"],
//         strCategory: json["strCategory"],
//         strCategoryThumb: json["strCategoryThumb"],
//         strCategoryDescription: json["strCategoryDescription"],
//     );

//     Map<String, dynamic> toMap() => {
//         "idCategory": idCategory,
//         "strCategory": strCategory,
//         "strCategoryThumb": strCategoryThumb,
//         "strCategoryDescription": strCategoryDescription,
//     };
// }
