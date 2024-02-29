import 'package:flutter/material.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/widgets/home_page/TabButton.dart';
import 'package:tastopia/widgets/home_page/appbar_widget.dart';
import 'package:tastopia/widgets/home_page/drawer_widget.dart';
import 'package:tastopia/widgets/home_page/search_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool DailyButton = true;
  bool FavButton = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: DrawerWidget(),
      
        appBar: BuildAppBar(screenHeight,screenWidth),
        body: Stack(
          children: [
            Positioned(
              top: -screenHeight*0.002,
              left:0,
              child:Container(
                width: screenWidth,
                height: screenHeight*0.418,
                color: Color(ColorConstants.primary),
              )
            ),

            Positioned(
              left: screenWidth*0.085,
              top: screenHeight*0.04,
              child: Center(
                child: SearchBarWidget()
              ),
            ),

            Positioned(
              top: screenHeight*0.15,
              left: screenWidth*0.09,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TabButton(screenHeight*0.0428, screenWidth*0.333, "Daily Recipes", () { }, 0xFFFFFF, ColorConstants.primaryDark),
                  SizedBox(width: screenWidth*0.1,),
                  TabButton(screenHeight*0.0428, screenWidth*0.333, "Favourites", () { }, 0xFFFFFF, ColorConstants.primaryDark)
                ]
              ))

                ],
            ));
  
  }

}
