import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';

class SocialButton extends StatelessWidget {
  final double screenHeight,screenWidth;
  const SocialButton({super.key,required this.screenHeight,required this.screenWidth});

  @override
  Widget build(BuildContext context) {

    return Column(children: [
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color(ColorConstants.gray),
                    thickness: 1,
                  ),
                ),
                Container(padding: new EdgeInsets.all(10.0),child: Text("OR", style: GoogleFonts.sora(color: Color(ColorConstants.gray),fontSize: 13,fontWeight: FontWeight.w500),)),
                Expanded(
                  child: Divider(
                    color: Color(ColorConstants.gray),
                   thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight*0.065,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Container(
                  width:screenWidth*0.08,
                  height: screenHeight*0.036,
                  child: Image(image: AssetImage("assets/images/Google.svg"),)
                  ),
                Container(
                  width:screenWidth*0.08,
                  height: screenHeight*0.036,
                  child: Image(image: AssetImage("assets/images/Octicons-mark-github.svg"),)
                  ),
                Container(
                  width:screenWidth*0.08,
                  height: screenHeight*0.036,
                  child: Image(image: AssetImage("assets/images/2021_Facebook_icon.svg"),)
                  ),
              ],
            ),
            ]);
  }
}