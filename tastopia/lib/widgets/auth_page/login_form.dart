import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/widgets/auth_page/inputfield.dart';

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
            Spacer(),
            InputFieldWidget(screenHeight, screenWidth, "USERNAME",0xFFd9d9d9,20,false),
            SizedBox(height: screenHeight*0.045,),
            InputFieldWidget(screenHeight, screenWidth, "PASSWORD",0xFFd9d9d9,20,true),
            SizedBox(height: screenHeight*0.04,),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.inter(color: Colors.black.withOpacity(0.7),fontSize: screenHeight*0.015),
              ),
            ),
            Spacer(flex: 2),
              
            
          ],
        ),
      ),
    );
  }
}