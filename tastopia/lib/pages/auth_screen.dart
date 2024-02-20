import 'package:flutter/material.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/widgets/auth_page/login_form.dart';
import 'package:tastopia/widgets/auth_page/signip_form.dart';
import 'package:tastopia/widgets/auth_page/social_form.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  bool _isShowSignup = false;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //login
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            width: _size.width*0.88,
            height: _size.height,
            left:_isShowSignup? -_size.width*0.76 :0.0,
            child: GestureDetector(
              onTap: (){
                setState(() {_isShowSignup = false;print(true);});
              },
              child: Container(
                color: Color(ColorConstants.light),
                child: LoginForm(screenHeight: _size.height,screenWidth: _size.width,),
              ),
            )
          ),
          //signup
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            width: _size.width*0.88,
            height: _size.height,
            left : _isShowSignup ? _size.width * 0.12 : _size.width * 0.88,
            child: GestureDetector(
              onTap: (){
                setState(() {_isShowSignup = true;print(true);});
              },
              child: Container(
                color: Color(ColorConstants.primary),
                child: SignupForm(screenHeight: _size.height,screenWidth: _size.width,),
              ),
            )
          ),
          //social
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            width: _size.width*0.6,
            top: _size.height*0.75,
            // right: _size.width*0.258,
            left: _isShowSignup? _size.width*0.259 : _size.width * 0.137,
            child: SocialButton(screenHeight: _size.height, screenWidth: _size.width)
          ),

        ],
      )
    );
  }
}