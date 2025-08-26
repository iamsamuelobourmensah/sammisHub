import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/features/Cart/presentation/widgets/product_cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color:
        //         Theme.of(context).brightness == Brightness.light
        //             ? Colortheme.labelPrimary
        //             : Colortheme.labelTertiary,
        //   ),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
     //   ),
        backgroundColor:
            Theme.of(context).brightness == Brightness.light
                ? Colors.white
                : Colors.black,
        title: Text(
          'Cart Screen',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Colortheme.labelPrimary
                    : Colortheme.labelTertiary,
          ),
        ),
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Center(
                child: ProductCartWidget()
              ),
            ],
          ),
        ),
      ),
    );
  }
}