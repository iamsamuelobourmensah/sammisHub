import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/features/Cart/presentation/screens/cart_screen.dart';

class ProductCartWidget extends StatelessWidget {
  const ProductCartWidget({
    super.key,
    this.index,
    this.imageUrl,
    this.productName,
    this.productCategory,
    this.productPrice,
    this.productQuantity,
  });
  final int? index;
  final String? imageUrl;
  final String? productName;
  final String? productCategory;
  final String? productPrice;
  final int? productQuantity;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(index),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              showRemoveCardDialogue(index!, context);
            },
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
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
                    image: NetworkImage(imageUrl ?? ""),
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
                    productName ?? "",
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
                    productCategory ?? "",
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
                        productPrice ?? "",
                        style: Theme.of(
                          context,
                        ).textTheme.displayLarge?.copyWith(
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

                            Expanded(child: Text(productQuantity.toString())),

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
      ),
    );
  }
}
