import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';

class TextTheming {

 static final TextTheme darkTextTheme = TextTheme(
    //  titleLarge: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
    //  titleMedium: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
    // titleSmall: const TextStyle().copyWith(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.white),

   displayLarge: const TextStyle().copyWith(fontSize: 18,  color: Colortheme.labelTertiary),
    displayMedium: const TextStyle().copyWith(fontSize: 15,  color: Colortheme.labelTertiary),
    displaySmall: const TextStyle().copyWith(fontSize: 13, color: Colortheme.labelTertiary),

    // bodyLarge: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    // bodyMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
      bodySmall: const TextStyle().copyWith(fontSize: 12, color: Colortheme.labelTertiary),

    // labelLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    //  labelMedium: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.w500, color: Colors.white),
    //  labelSmall: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.normal, color: Colors.white),

    //  headlineLarge: const TextStyle().copyWith(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
    //  headlineMedium: const TextStyle().copyWith(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
    // headlineSmall:  const TextStyle().copyWith(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white),

  );


 static final TextTheme lightTextTheme = TextTheme(
//      titleLarge: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black87),//for larger text
//      titleMedium: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black87),// for small text
//     titleSmall: const TextStyle().copyWith(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black87),// for small text but bold

    displayLarge: const TextStyle().copyWith(fontSize: 18,color:Colortheme.labelPrimary),
    displayMedium: const TextStyle().copyWith(fontSize: 15, color: Colortheme.labelPrimary),
   displaySmall: const TextStyle().copyWith(fontSize: 13,color: Colortheme.labelPrimary),

//     bodyLarge: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87), // medium some how
//      bodyMedium: const TextStyle().copyWith(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black87),// for large but bold font
     bodySmall: const TextStyle().copyWith(fontSize: 12,color: Colortheme.labelPrimary), 

//     labelLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
//      labelMedium: const TextStyle().copyWith(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black87),
//      labelSmall: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.normal, color: Colors.black87),

//      headlineLarge: const TextStyle().copyWith(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87),
//      headlineMedium: const TextStyle().copyWith(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black87),
// headlineSmall:  const TextStyle().copyWith(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black87),
  );
}
