import 'package:http/http.dart' as http;
import 'package:tastopia/models/single_recipe.dart';

Future<SingleRecipe> RandomMeal (url) async {
  final response = await http
      .get(Uri.parse(url));

  if (response.statusCode == 200) {
    // print(response.body);
    return SingleRecipe.fromJson(response.body);
  } else {
    throw Exception('Failed to load ');
  }
}