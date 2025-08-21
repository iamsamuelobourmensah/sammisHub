import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     // clipBehavior: Clip.antiAlias,
      height: MediaQuery.of(context).size.height*0.23,
      width: MediaQuery.of(context).size.width/1,
      decoration: BoxDecoration(
        color: Colortheme.primaryNormal,
        borderRadius: BorderRadius.circular(20),
      ),
child: Padding(
  padding: const EdgeInsets.all(15.0),
  child: Stack(
    clipBehavior: Clip.none,
    children: [
      Positioned(
        left:-1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Step Into Elegance,",style: Theme.of(context).textTheme.displayLarge?.copyWith(
            fontSize: 20,
            color: Colortheme.labelTertiary,
            fontWeight: FontWeight.w900,
          )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              
          Text("Walk With Pride",style: Theme.of(context).textTheme.displayLarge?.copyWith(
            fontSize: 20,
            color: Colortheme.labelTertiary,
            fontWeight: FontWeight.w900,
          )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          Text("Enjoy discount of up to",style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Colortheme.labelTertiary,
           // fontWeight: FontWeight.bold,
          )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              
          Text("10% on your order today",style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Colortheme.labelTertiary,
           // fontWeight: FontWeight.bold,
          )),
          //SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              
              ElevatedButton(
                style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colortheme.labelTertiary),
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23.0),
          ),
        ),
                ),
                onPressed: () {}, child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 12.0),
        child: Text("View Details",style: Theme.of(context).textTheme.displayLarge?.copyWith(
          color: Colortheme.labelPrimary,
          fontWeight: FontWeight.w800,
        ),),
                ))
        ],),
      ),
            
      Positioned(
        bottom: -100,
       // top: -10,
       // right: -5,
        left: 70,
        child: Image.asset("assets/images/caroShoe.png",fit: BoxFit.contain,width: 400,height: 380,)),
    ],
  ),
),
    );
  }
}
