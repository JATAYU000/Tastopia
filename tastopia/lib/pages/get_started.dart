import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              top: screenHeight * 0.6,
              left: screenWidth * 0.15,
              child: Column(
                children: [
                  Text("TASTOPIA",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.inika().fontFamily,
                      fontSize: 56,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(10.0, 10.0),
                          blurRadius: 100.0,
                        ),
                        Shadow(
                          offset: Offset(10.0, 10.0),
                          blurRadius: 15.0,
                        ),
                      ],
                    ),
                  ),
                  Text("Be your own Chef!",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.inika().fontFamily,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.9,
              left: screenWidth * 0.1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AuthenticationPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.fromLTRB(100, 16, 100, 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                child: Text("Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.sora().fontFamily,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
