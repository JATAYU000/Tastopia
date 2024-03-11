import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/models/categories.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      
      children: [
        Container(
          
          margin: EdgeInsets.only(right: screenWidth*0.65),
          child:  Text("Categories",style: TextStyle(
            
          color: Color(ColorConstants.dark),
          fontFamily: GoogleFonts.sora().fontFamily,
          fontSize: screenHeight*0.02,
          fontWeight: FontWeight.bold
        
        ),)),
        SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: screenWidth * 1,
                      height:screenHeight*0.11,
                      child:ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: CatData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(top: 18.0,left:10.0 ,right: 10.0),
                            width: screenHeight*0.095,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              // scale: 0.9,
                              image: NetworkImage(CatData[index].strCategoryThumb,scale: 0.8),
                              // fit: BoxFit.cover,
                              ),)
                          );
                          // return EventBox(context, widget.scwidth, widget.scheight,index,EventList,                          () {}
                          
                            
                        }
                      )
                    ),
                  ],
                ),
              ),

      ]
    );
  }
}