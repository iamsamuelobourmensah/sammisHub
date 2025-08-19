import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/core/Constants/text_theme.dart';

class Apptheme {
  // lightAppTheme
static  final ThemeData lightTheme =
      ThemeData(useMaterial3: true, 
      fontFamily:GoogleFonts.montserrat().fontFamily,
      textTheme: TextTheming.lightTextTheme,
      brightness: Brightness.light,
scaffoldBackgroundColor: Colortheme.labelTertiary
       );

       //darkAppTheme
       static  final ThemeData darkTheme =
      ThemeData(useMaterial3: true, 
      fontFamily:GoogleFonts.montserrat().fontFamily,
      textTheme: TextTheming.lightTextTheme,
      brightness: Brightness.dark,
scaffoldBackgroundColor: Colors.black
       );

}
