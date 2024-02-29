import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/pages/home_page.dart';
import 'package:tastopia/widgets/auth_page/inputfield.dart';
import 'package:tastopia/widgets/authbutton.dart';

class LoginForm extends StatelessWidget {
  final double screenHeight,screenWidth;
  const LoginForm({super.key,required this.screenHeight,required this.screenWidth});

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
            SizedBox(height: screenHeight*0.045,),
            InputFieldWidget(screenHeight, screenWidth, "PASSWORD",0xFFd9d9d9,20,true),
            SizedBox(height: screenHeight*0.04,),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot your Password?",
                style: GoogleFonts.inter(color: Color(ColorConstants.gray),fontSize: screenHeight*0.015,fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: screenHeight*0.04,),
            AuthButton(
              screenWidth*0.64,
              screenHeight*0.06,
              15,
              0xFFfe8744,
              "",
              0xFFffffff,
              17,
              () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));  }
                  ),
            SizedBox(height: screenHeight*0.065,),
            
              
            
          ],
        ),
      ),
    );
  }
}