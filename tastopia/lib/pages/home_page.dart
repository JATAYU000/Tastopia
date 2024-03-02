import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/models/api/random_recipe.dart';
import 'package:tastopia/models/single_recipe.dart';
import 'package:tastopia/widgets/home_page/TabButton.dart';
import 'package:tastopia/widgets/home_page/appbar_widget.dart';
import 'package:tastopia/widgets/home_page/drawer_widget.dart';
import 'package:tastopia/widgets/home_page/search_input.dart';
import 'package:tastopia/widgets/home_page/swipeable_widget.dart';

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
    setDaily();setDaily();setDaily();
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
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(ColorConstants.primary),
                  Color(ColorConstants.primary),
                  Colors.white,
                  Colors.white
                      ],
              stops: [0.0, 0.6, 0.6, 1.0],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
            ),
          ),
            child: Column(
              children: [
              
            
                Container(
                  margin: EdgeInsets.only(top:20.0,bottom: 20.0),
                  child: Center(
                    child: SearchBarWidget()
                  ),
                ),
            
                Center(
                  child: Container(
                    width: screenWidth*0.721,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TabButton(screenHeight*0.0438, screenWidth*0.333, "Daily Recipes", () { 
                          setDaily();
                        setState(() {
                          DailyButton = !DailyButton;
                          FavButton = !FavButton;
                        });},  0xFFFFFF,DailyButton? ColorConstants.primaryDark : ColorConstants.primary),
                        // SizedBox(width: screenWidth*0.124,),
                        TabButton(screenHeight*0.0438, screenWidth*0.333, "Favourites", () {setState(() {
                          DailyButton = !DailyButton;
                          FavButton = !FavButton;
                        }); }, 0xFFFFFF, FavButton? ColorConstants.primaryDark : ColorConstants.primary)
                      ]
                    ),
                  )),
            
                Container(
                  margin: EdgeInsets.only(top:20.0,bottom:20.0),
                  child: SwipeableWidget(dailyMeals: Daily)    
                ),
                ]
              ),
          ),
        )
        );
  }

}
