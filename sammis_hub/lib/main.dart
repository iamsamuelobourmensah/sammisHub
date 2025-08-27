import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sammis_hub/core/Constants/apptheme.dart';
import 'package:sammis_hub/core/binding/bindings.dart';
import 'package:sammis_hub/core/utils/custom_navBar.dart';
import 'package:sammis_hub/features/Cart/presentation/screens/cart_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
 

  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      darkTheme: Apptheme.darkTheme,
      theme: Apptheme.lightTheme,

      home: CustomNavbar(),
   //  home: CartScreen(),
    );
  }
}
