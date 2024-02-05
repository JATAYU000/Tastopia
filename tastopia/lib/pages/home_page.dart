import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        drawer: Drawer(
          child: ListView(
            children: [

            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search here...',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Container(
                    width: 100,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          VerticalDivider(
                            indent: 10,
                            endIndent: 10,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(Icons.arrow_drop_down_circle_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                  filled: true,
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  )
                ),
              ),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 20,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
            )
          ],
        ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        title: const Text('Tastopia'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.orange
        ),
        titleTextStyle: TextStyle(
          fontFamily: GoogleFonts.poppins().fontFamily,
          color: Colors.black,
          fontSize: 30,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                  Icons.favorite_border,
              ),
            ),
          ),
        ],
      );
  }
}
