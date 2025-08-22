import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/features/Product/presentation/widgets/product_detailscreen_image_contianer.dart';
import 'package:sammis_hub/features/Product/presentation/widgets/product_quantity_and_ratingstar_row.dart';

class ProductDetailsScreen extends StatelessWidget {
   const ProductDetailsScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).brightness == Brightness.light
              ? Colortheme.labelPrimary
              : Colortheme.labelTertiary,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Colors.black,
        title:  Text('Product Details', style: Theme.of(context).textTheme.displayLarge?.copyWith(
          color: Theme.of(context).brightness == Brightness.light
              ? Colortheme.labelPrimary
              : Colortheme.labelTertiary,
        )),
      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ProductDetailscreenImageContainer(),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Row(
              children: [
                Text('Product Name', style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colortheme.labelPrimary
                      : Colortheme.labelTertiary,
                      fontWeight: FontWeight.bold,
                )),
                Spacer(),
                Text('\$99.99', style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colortheme.labelPrimary
                      : Colortheme.labelTertiary,
                      fontWeight: FontWeight.bold
                )),
              ],
            ),
            ProductQuantityAndRatingstarRow()
          ],
        ),
      )
    );
  }
}