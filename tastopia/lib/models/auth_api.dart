import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<void> SignupRequest(TextEditingController usernameController, TextEditingController passwordController, TextEditingController emailController) async {
  var signupurl = Uri.parse("http://tastopia.pythonanywhere.com/api/sign");
  print(jsonEncode({
    "username": "${usernameController.text}",
    "password": "${passwordController.text}",
    "email": "${emailController.text}",
  }));
  var response = await http.post(signupurl,
    headers: {"Content-Type": "application/json"},
    body: jsonEncode({
      "username": "${usernameController.text}",
      "password": "${passwordController.text}",
      "email": "${emailController.text}",
    }));
  print(response.body);

}



void LoginRequest() async {
  var loginurl = Uri.parse("http://tastopia.pythonanywhere.com/api/token");
}