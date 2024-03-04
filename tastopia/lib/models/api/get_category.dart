import 'package:http/http.dart' as http;
import 'package:tastopia/models/categories.dart';


// Future<Categories> getCategories (url) async {
//   final response = await http
//       .get(Uri.parse(url));

//   if (response.statusCode == 200) {
//     // print(Categories.fromJson(response.body).categories[0].strCategory);
//     return Categories.fromJson(response.body);
//   } else {
//     throw Exception('Failed to load ');
//   }
// }