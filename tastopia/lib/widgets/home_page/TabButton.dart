
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';

SizedBox TabButton (
  double Height,
  double Width,
  String text,
  VoidCallback callback,
  int TextColor,
  int ButtonColor,
)
{
  return SizedBox(
    width: Width,
    height: Height,
    child: TextButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(ButtonColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(text,
        style: TextStyle(
          color: Color(0xFFffffff),
          fontFamily: GoogleFonts.sora().fontFamily,
          fontSize: Height*0.31,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}