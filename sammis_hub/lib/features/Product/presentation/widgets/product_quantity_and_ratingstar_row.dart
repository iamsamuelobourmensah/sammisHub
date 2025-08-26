import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';

class ProductQuantityAndRatingstarRow extends StatefulWidget {
   ProductQuantityAndRatingstarRow({super.key,required this.quantity, required this.onIncrement, required this.onDecrement});

  int? quantity;
   final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  State<ProductQuantityAndRatingstarRow> createState() => _ProductQuantityAndRatingstarRowState();
}

class _ProductQuantityAndRatingstarRowState extends State<ProductQuantityAndRatingstarRow> {
// function to increase and decrease the quantity



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: widget.onDecrement,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.06,
                height: MediaQuery.of(context).size.height * 0.03,
                child: Material(
                  color: Colortheme.primaryNormal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.remove,
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Colors.white
                              : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.quantity.toString(),
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color:
                      Theme.of(context).brightness == Brightness.light
                          ? Colortheme.labelPrimary
                          : Colortheme.labelTertiary,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            InkWell(
              onTap: widget.onIncrement,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.06,
                height: MediaQuery.of(context).size.height * 0.03,
                child: Material(
                  color: Colortheme.primaryNormal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Colors.white
                              : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.04,
          child: Material(
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Colors.white
                    : Colors.black,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colortheme.systemBackgroundDark,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.amber, size: 18),
                SizedBox(width: 5),
                Text(
                  "4.5",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colortheme.labelPrimary
                            : Colortheme.labelTertiary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
