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
  LoginRequest(usernameController, passwordController);
}



void LoginRequest(TextEditingController usernameController, TextEditingController passwordController) async {
  var loginurl = Uri.parse("http://tastopia.pythonanywhere.com/api/token/");
  print(jsonEncode({
    "username": "${usernameController.text}",
    "password": "${passwordController.text}",
  }));
  var response = await http.post(loginurl,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "username": "${usernameController.text}",
        "password": "${passwordController.text}"
      }));
  print(response.statusCode);
  print(response.body);
}