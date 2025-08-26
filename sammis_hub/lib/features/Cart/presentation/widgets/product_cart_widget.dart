import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';

class ProductCartWidget extends StatelessWidget {
  const ProductCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:
            Theme.of(context).brightness == Brightness.light
                ? Colortheme.labelTertiary
                : Colortheme.labelPrimary,
        border: Border.all(
          style: BorderStyle.solid,
          color: Colortheme.primaryNormal,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/images/electronics.jpeg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  style: BorderStyle.solid,
                  color: Colortheme.primaryNormal,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Product Name",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colortheme.labelPrimary
                            : Colortheme.labelTertiary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  "Category",
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colortheme.labelSecondary
                            : Colortheme.labelTertiary,
                    //fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                Row(
                  //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "GHC 2998.99",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color:
                            Theme.of(context).brightness == Brightness.light
                                ? Colortheme.labelPrimary
                                : Colortheme.labelTertiary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.22,
                      height: MediaQuery.of(context).size.height * 0.045,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            Theme.of(context).brightness == Brightness.light
                                ? Colortheme.labelTertiary
                                : Colortheme.labelPrimary,
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colortheme.primaryNormal,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.remove_circle,
                            color: Colortheme.primaryNormal,
                          ),

                          Expanded(child: Text("100")),

                          Icon(
                            Icons.add_circle,
                            color: Colortheme.primaryNormal,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
