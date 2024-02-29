import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/widgets/authbutton.dart';

import 'auth_screen.dart';


class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/GetStartedBackground.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.53,
              left: screenWidth * 0.18,
              child: Column(
                children: [
                  Text("TASTOPIA",
                    style: TextStyle(

                      color: Colors.white,
                      fontFamily: GoogleFonts.inika().fontFamily,
                      fontSize: screenHeight*0.06,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(5.0, 8.0),
                          blurRadius: 100.0,
                          color: Colors.black.withOpacity(0.4),
                        ),
                        Shadow(
                          offset: Offset(5.0, 8.0),
                          blurRadius: 20.0,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ],
                    ),
                  ),
                  Text("Be your own Chef!",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.inriaSans().fontFamily,
                      fontSize: screenHeight * 0.021,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text("Delicious moments start here. Explore,\ncook, and enjoy with our user-friendly \n                          recipe app!",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.inriaSans().fontFamily,
                      fontSize: screenHeight * 0.019,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.83,
              left: screenWidth * 0.12,
              child: AuthButton(
                  screenWidth * 0.74,
                  screenHeight * 0.064,
                  screenHeight * 0.021,
                  ColorConstants.primary,
                  "Get Started",
                  0xFFffffff,
                  screenHeight * 0.021,
                  () { Navigator.of(context).push(_createRoute());})
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 1000),
    pageBuilder: (context, animation, secondaryAnimation) => const AuthenticationPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

