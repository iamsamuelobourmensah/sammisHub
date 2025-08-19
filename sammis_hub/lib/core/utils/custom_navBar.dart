import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/core/features/CartScreen/presentation/cart_screen.dart';
import 'package:sammis_hub/core/features/HomeScreen/Presentation/home_screen.dart';
import 'package:sammis_hub/core/features/Profile/presentation/profile_screen.dart';
import 'package:sammis_hub/core/features/wishListScreen/presentation/wishListscreen.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}


class _CustomNavbarState extends State<CustomNavbar> {
  final Bottomnavigationbarcontroller navBarcontroller = Get.put(Bottomnavigationbarcontroller());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      bottomNavigationBar: BottomNavigationBar(
           landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colortheme.labelTertiary,
         unselectedItemColor: Colortheme.systemBackgroundDark,
         selectedItemColor: Colortheme.primaryNormal,
        currentIndex: navBarcontroller.currentScreen.value,
        onTap: (index) {
          navBarcontroller.currentScreen.value = index;
         // Get.to(navBarcontroller.navScreens[index]);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'WishList',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: Obx(() => navBarcontroller.navScreens[navBarcontroller.currentScreen.value]),
    ));
  }
  
}

class Bottomnavigationbarcontroller extends GetxController {
  Rx<int> currentScreen = 0.obs;

  List navScreens = [
     const HomeScreen(),
    const WishlistScreen(),
     const CartScreen(),
     const ProfileScreen(),
  ].obs;
}

