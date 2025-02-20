import 'package:flutter/material.dart' show AppBarTheme, BuildContext, Colors, FontWeight, IconThemeData, Key, MaterialApp, StatelessWidget, TextTheme, ThemeData, Widget;
import 'package:flutter_projects/projects/superheroes/ui/superhero_slider_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SuperheroesApp extends StatelessWidget {
  const SuperheroesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Superheroes App",
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        //-------------------
        // App Bar Theme
        //-------------------
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          titleTextStyle: GoogleFonts.leagueSpartan(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        //-------------------
        // Text Theme
        //-------------------
        textTheme: TextTheme(
          headline2: GoogleFonts.leagueSpartan(
            fontWeight: FontWeight.w600,
            letterSpacing: -3,
            height: 0.9,
            fontSize: 64,
          ),
          headline5: GoogleFonts.leagueSpartan(
            letterSpacing: -1,
            fontWeight: FontWeight.w500,
          ),
        ).apply(
          displayColor: Colors.white,
          bodyColor: Colors.white,
        ),
      ),
      home:const SuperheroSliderPage(),
    );
  }
}
