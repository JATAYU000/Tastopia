import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container InputFieldWidget(
  double screenHeight,
  double screenWidth,
  String HinText,
  int InputColor,
  int InpLength,
  bool isPass,
)
{
return Container(
              decoration: BoxDecoration(
                color: Color(InputColor).withOpacity(0.3),

                borderRadius: BorderRadius.circular(10)
              ),
              height: screenHeight*0.077,
              width: screenWidth*0.65,
              child: TextFormField(
                obscureText: isPass,
                maxLength: InpLength,
                textAlignVertical: TextAlignVertical.center,
                style: GoogleFonts.sora(color: Colors.black.withOpacity(0.7),fontSize: screenHeight*0.018,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    counter: Offstage(),
                    hintText: HinText,
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.sora(color: Color(0xFF616060),fontSize: screenHeight*0.0175,fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.only(
                       left: 15, top: screenHeight*0.025),
                    isDense: true
                    ),
                    
                  ),
            );

}