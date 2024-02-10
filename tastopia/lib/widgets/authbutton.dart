//login button

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox AuthButton(
    double Width,
    double Height,
    double borderRadius,
    int backgroundColorHex,
    String text,
    int textColorHex,
    double fontSize,
    VoidCallback callback,
    ){
  return SizedBox(
    width: Width,
    height: Height,
    child: ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(backgroundColorHex),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
      ),
      child: Text(text,
        style: TextStyle(
          color: Color(textColorHex),
          fontFamily: GoogleFonts.sora().fontFamily,
          fontSize: fontSize,
        ),
      ),
    ),
  );
}