import 'package:flutter/material.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/widgets/auth_page/login_form.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: _size.width*0.88,
            height: _size.height,
            child: Container(
              color: Color(0xFFffffff),
              child: LoginForm(screenHeight: _size.height,screenWidth: _size.width,),
            )
            
            ),
        ],
      )
    );
  }
}