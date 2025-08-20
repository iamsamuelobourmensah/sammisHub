import 'package:flutter/material.dart';
import 'package:sammis_hub/core/features/HomeScreen/Presentation/widgets/home_screen_app_bar_widget.dart';
import 'package:sammis_hub/core/features/HomeScreen/Presentation/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            HomeScreenAppBarWidget(
              userLocation: "Paris, France",
              userName: "John Robert",
            ),// appBar
          
          
            Column(
              children: [
                SizedBox(height: screenSize.height * 0.02,),
                CustomSearchBar(),
                SizedBox(height: screenSize.height * 0.02,),

              ],
            )
          ],),
        ),
      )
    );
  }
}