import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/main.dart';
import 'package:tastopia/models/single_recipe.dart';

class SwipeableWidget extends StatelessWidget {
  final List<SingleRecipe> dailyMeals;
  const SwipeableWidget({super.key,required this.dailyMeals});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 320,
      width: screenWidth,
      child : Column(
        

        children: [
          CarouselSlider.builder( 
            itemCount: dailyMeals.length, 
            itemBuilder: (BuildContext context, int itemIndex, int Page) => Container( 
              margin: EdgeInsets.all(4.0),
                width: 250,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 4,
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                    )
                  ],
                  color: Colors.black12,
                  image: DecorationImage(
                    image: NetworkImage(dailyMeals[itemIndex].meals[0]["strMealThumb"] ?? 'Null'),
                    fit: BoxFit.cover,
                    ),
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                // child: Text(dailyMeals[itemIndex].meals[0]["strMeal"] ?? 'Null'),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10,top: 170, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.0,left: 10,right: 10),
                    child: Column(
                      children: [
                        Text(dailyMeals[itemIndex].meals[0]["strMeal"] ?? 'Null' ,textAlign: TextAlign.start,style: GoogleFonts.sora(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text("Russian, Dessert",textAlign: TextAlign.end, style: GoogleFonts.sora(fontSize: 14,color: Colors.white),),
                        Expanded(
                          child: Divider(
                            endIndent: 15,
                            indent: 15,
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        // Divider(
                          
                        //     endIndent: 15,
                        //     indent: 15,
                        //     color: Colors.white,
                        //     thickness: 1,
                        //   ),
                        Row(
                          children: [
                            Container(
                              // margin: EdgeInsets.only(left: 15.0,right: 6.0,bottom: 8),
                              child: Icon(
                                Icons.abc,
                                size: 10,
                                color: Color(0xffFFBF00),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(bottom: 8),
                              child: Text("4.9(21)",style: GoogleFonts.sora(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),)),
                            Expanded(child:Container()),
                            Container(
                              // margin: EdgeInsets.only(left: 0.0,bottom: 8,right: 15.0),
                              child: Text("Easy",style: GoogleFonts.sora(fontSize: 14,color: Colors.white),))
                          ],
                        )
                    
                      ]
                    ),
                  )
                  )
              ),
            options: CarouselOptions(
              height:300,
          viewportFraction: 0.72,
          enableInfiniteScroll: true,
          // enlargeCenterPage: true,
          // aspectRatio: 1.2
        ), 
          ),
          
        ],)
    );
  }
}


