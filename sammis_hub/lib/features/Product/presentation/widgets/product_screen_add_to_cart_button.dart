import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';

class ProductScreenAddToCartButton extends StatelessWidget {
  const ProductScreenAddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(Colortheme.primaryNormal),
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(23.0)),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
        child: Row(
          children: [
            Icon(Icons.add_circle, color: Theme.of(context).brightness == Brightness.light ? Colortheme.labelTertiary : Colortheme.labelPrimary,),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            Text(
              "Add To Cart",
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: Theme.of(context).brightness == Brightness.light
                    ? Colortheme.labelTertiary
                    : Colortheme.labelPrimary,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
