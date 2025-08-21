import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';

class HomeScreenProductCard extends StatelessWidget {
  const HomeScreenProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:
            Theme.of(context).brightness == Brightness.light
                ? Colortheme.labelTertiary
                : Colortheme.labelPrimary,
        
      ),

      child: Column(
        children: [
          
          Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                      //  borderRadius: BorderRadius.circular(20),
                // color:
                //     Theme.of(context).brightness == Brightness.light
                //         ? Colortheme.labelTertiary
                //         : Colortheme.labelPrimary,
                image: DecorationImage(
                  image: AssetImage("assets/images/electronics.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colortheme.labelPrimary,
                  borderRadius: BorderRadius.circular(20),
                ),
              child: Icon(Icons.favorite_border_outlined, ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Luka.77 PF",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        //fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colortheme.labelPrimary
                            : Colortheme.labelTertiary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                                  Text(
                      "GHC 400",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        //fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colortheme.labelPrimary
                            : Colortheme.labelTertiary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.open_in_new,color: Colortheme.primaryNormal,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
