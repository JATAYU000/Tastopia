import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
        width: screenWidth*0.831,
        height: screenHeight*0.073,
        
                child:TextField(
                  style:GoogleFonts.sora(fontSize: screenHeight*0.019,fontWeight: FontWeight.bold,),
                      maxLength: 20,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        counter: Offstage(),
                        contentPadding: EdgeInsets.only(top:screenHeight*0.0001,),
                        
                        hintText: "Try Butter Chicken",
                        // hintStyle: GoogleFonts.sora(fontSize: screenHeight*0.021,fontWeight: FontWeight.bold,),
                        prefixIcon:
                            IconButton(
                              onPressed: () {}, 
                              icon: Icon(Icons.search_rounded),
                              color: Color(ColorConstants.gray),
                              iconSize: screenHeight*0.0378
                              ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.tune_rounded),
                          onPressed: () {},
                          color: Color(ColorConstants.gray),
                              iconSize: screenHeight*0.0378,
                        ),
                      ),
                    
                  )
      );
    
  }
}