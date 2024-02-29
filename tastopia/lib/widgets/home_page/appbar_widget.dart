import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';

AppBar BuildAppBar(
  screenHeight,
  screenWidth,
){
    return AppBar(
       toolbarHeight: screenHeight*0.1,
       
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Text(
                  textAlign: TextAlign.start,
                'Hey <username>!',
                style: GoogleFonts.inika(
                    color: Color(ColorConstants.dark),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Text("Some random tagline goes here",
              style: GoogleFonts.inika(
                    color: Color(ColorConstants.dark),
                    fontWeight: FontWeight.normal,
                    fontSize: 14),),
            ]
           ),
        // centerTitle: true,
        backgroundColor: Color(ColorConstants.primary),
        iconTheme: IconThemeData(
          color: Color(ColorConstants.dark)
        ),
        actions: [
          Container(
            child: Padding(
              padding:  EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/ggarlic.jpg')
              ),
            ),
          ),
        ],
      );
  }
