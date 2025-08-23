import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';

class ProductDetailScreenPriceCard extends StatelessWidget {
  const ProductDetailScreenPriceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.05,
      child: Material(
        color: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.black,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colortheme.systemBackgroundDark,
            width: 1
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            "\$299.99",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colortheme.labelPrimary
                  : Colortheme.labelTertiary,
                  fontWeight: FontWeight.bold,
                //  fontSize: 22
            ),
          ),
        ),
      ),
    );
  }
}