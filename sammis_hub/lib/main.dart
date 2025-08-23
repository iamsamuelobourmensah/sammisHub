import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sammis_hub/core/Constants/apptheme.dart';
import 'package:sammis_hub/core/utils/custom_navBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      darkTheme: Apptheme.darkTheme,
      theme: Apptheme.darkTheme,

      home:  CustomNavbar(),
    );
  }
}

