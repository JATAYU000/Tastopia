import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/widgets/auth_page/inputfield.dart';
import 'package:tastopia/widgets/authbutton.dart';

class SignupForm extends StatelessWidget {
  final double screenHeight,screenWidth;

  const SignupForm({super.key,required this.screenHeight,required this.screenWidth});

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
            InputFieldWidget(screenHeight, screenWidth, "USERNAME",0xFFd9d9d9,20,false),
            SizedBox(height: screenHeight*0.03,),
            InputFieldWidget(screenHeight, screenWidth, "EMAIL",0xFFd9d9d9,30,false),
            SizedBox(height: screenHeight*0.03,),
            InputFieldWidget(screenHeight, screenWidth, "PASSWORD",0xFFd9d9d9,20,true),
            SizedBox(height: screenHeight*0.04,),
            
            SizedBox(height: screenHeight*0.04,),
            AuthButton(
              screenWidth*0.64,
              screenHeight*0.06,
              15,
              0xFFffffff,
              "SIGN UP",
              0xFFfe8744,
              17,
              () {print("Signed in"); }
                  ),
            SizedBox(height: screenHeight*0.065,),
            
              
            
          ],
        ),
      ),
    );
  }
}