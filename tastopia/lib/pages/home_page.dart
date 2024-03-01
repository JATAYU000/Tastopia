import 'package:flutter/material.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/models/api/random_recipe.dart';
import 'package:tastopia/models/single_recipe.dart';
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
  List<SingleRecipe> Daily = []; 
  bool DailyButton = true;
  bool FavButton = false;
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  void setDaily() {
    RandomMeal('https://www.themealdb.com/api/json/v1/1/random.php').then((val) => setState(() {
          Daily.add(val);
          print(val.meals[0]["strMeal"]);
        }));
  }

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
              left: screenWidth*0.085,
              child: Container(
                width: screenWidth*0.831,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TabButton(screenHeight*0.0438, screenWidth*0.333, "Daily Recipes", () { 
                      setDaily();
                    setState(() {
                      DailyButton = !DailyButton;
                      FavButton = !FavButton;
                    });},  0xFFFFFF,DailyButton? ColorConstants.primaryDark : ColorConstants.primary),
                    SizedBox(width: screenWidth*0.124,),
                    TabButton(screenHeight*0.0438, screenWidth*0.333, "Favourites", () {setState(() {
                      DailyButton = !DailyButton;
                      FavButton = !FavButton;
                    }); }, 0xFFFFFF, FavButton? ColorConstants.primaryDark : ColorConstants.primary)
                  ]
                ),
              )),

            Positioned(
              top: screenHeight*0.2,
              child: Container(

            ))

                ],
            ));
  
  }

}
