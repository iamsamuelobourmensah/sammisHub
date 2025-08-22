import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';

class ProductQuantityAndRatingstarRow extends StatelessWidget {
  const ProductQuantityAndRatingstarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.06,
          height: MediaQuery.of(  context).size.height * 0.03,
          child: Material(
            color: Colortheme.primaryNormal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Icon(Icons.remove, color: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.black,),
          ),
        )
      ],)
    ],);
  }
}