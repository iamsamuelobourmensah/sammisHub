import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';

class HomeScreenProductCard extends StatelessWidget {
  const HomeScreenProductCard({super.key, required this.imageUrl, required this.productName, required this.productPrice});

final String imageUrl;
final String productName;
final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
    //  height: MediaQuery.of(context).size.height * 0.2,
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
                  image: NetworkImage(imageUrl),
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
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colortheme.labelTertiary
                      : Colortheme.labelPrimary,
                  borderRadius: BorderRadius.circular(20),
                ),
              child: Icon(Icons.favorite_border_outlined, ),
              ),
            ),
          ]),
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: Theme.of(context).brightness == Brightness.light
                    ? Colortheme.labelPrimary
                    : Colortheme.labelTertiary,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(
              "GHC $productPrice",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: Theme.of(context).brightness == Brightness.light
                    ? Colortheme.labelPrimary
                    : Colortheme.labelTertiary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),


      Icon(
        Icons.open_in_new,
        color: Colortheme.primaryNormal,
      ),
    ],
  ),
)
 ],
      ),
    );
  }
}
