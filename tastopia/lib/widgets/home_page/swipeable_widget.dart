import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:tastopia/models/single_recipe.dart';

class SwipeableWidget extends StatelessWidget {
  final List<SingleRecipe> dailyMeals;
  const SwipeableWidget({super.key,required this.dailyMeals});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 380,
      width: screenWidth,
      child : Column(
        

        children: [
          CarouselSlider.builder( 
            itemCount: dailyMeals.length, 
            itemBuilder: (BuildContext context, int itemIndex, int Page) => Container( 
              margin: EdgeInsets.all(6.0),
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
                child: Text(dailyMeals[itemIndex].meals[0]["strMeal"] ?? 'Null'),
              ),
            options: CarouselOptions(
              height:300,
          viewportFraction: 0.72,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
        ), 
          ),
          
        ],)
    );
    



  //   return Swiper(
  //             itemWidth: 280,
  //             itemHeight: 325,
  //             loop: true,
  //             duration: 10000,
  //             scrollDirection: Axis.horizontal
  //             ,
  //             axisDirection: AxisDirection.left,
  //             itemBuilder: (context, index) {
  //               return Container(
  //                 decoration: BoxDecoration(
  //                   color: Colors.black12,
  //                   image: DecorationImage(image: NetworkImage(dailyMeals[index].meals[0]["strMealThumb"] ?? 'Null')),
  //                   // image: DecorationImage(image: AssetImage("assets/images/ggarlic.jpg")),
  //                   borderRadius: BorderRadius.circular(20),
                    
  //                 ),
  //                 child: Text(dailyMeals[index].meals[0]["strMeal"] ?? 'Null'),
  //               );
  //             },
  //             itemCount: dailyMeals.length,
  //             layout: SwiperLayout.TINDER,

  // // viewportFraction: 0.8, 
  // // curve: Curves.easeInOut, 
  //           );
  }
}


