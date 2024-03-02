import 'package:flutter/material.dart';
import 'package:tastopia/pages/home_page.dart';
import 'package:tastopia/widgets/auth_page/inputfield.dart';
import 'package:tastopia/widgets/authbutton.dart';
import 'package:tastopia/models/auth_api.dart';


class SignupForm extends StatelessWidget {
  final double screenHeight,screenWidth;
  final TextEditingController usernameController,passwordController,emailController;


  const SignupForm({super.key,required this.screenHeight,required this.screenWidth,required this.usernameController,required this.passwordController,required this.emailController});

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: screenHeight*0.01,),
            InputFieldWidget(screenHeight, screenWidth, "USERNAME",0xFFd9d9d9,20,false,usernameController),
            SizedBox(height: screenHeight*0.03,),
            InputFieldWidget(screenHeight, screenWidth, "EMAIL",0xFFd9d9d9,30,false,emailController),
            SizedBox(height: screenHeight*0.03,),
            InputFieldWidget(screenHeight, screenWidth, "PASSWORD",0xFFd9d9d9,20,true,passwordController),
            SizedBox(height: screenHeight*0.04,),
            
            SizedBox(height: screenHeight*0.04,),
            AuthButton(
              screenWidth*0.64,
              screenHeight*0.06,
              15,
              0xFFffffff,
              "",
              0xFFfe8744,
              17,
              () {SignupRequest(usernameController, passwordController, emailController);}
                  ),
            SizedBox(height: screenHeight*0.065,),
            
            
              
            
          ],
        ),
      ),
    );
  }
}