import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/features/Cart/presentation/controllers/cart_controller.dart';
import 'package:sammis_hub/features/Cart/presentation/widgets/product_cart_widget.dart';

class CartScreen extends StatelessWidget {
 const  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final CartController _cartController = Get.find<CartController>();

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
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Obx(
              () => Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _cartController.cartItems.length,
                    itemBuilder: (context, index) {
                      final cartItem = _cartController.cartItems[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ProductCartWidget(index: index),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showRemoveCardDialogue(int index, BuildContext context) {
  showBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width,
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),

              Text(
                "Remove item from cart?",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color:
                      Theme.of(context).brightness == Brightness.light
                          ? Colortheme.labelPrimary
                          : Colortheme.labelTertiary,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ProductCartWidget(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).brightness == Brightness.light
                            ? Colortheme.labelTertiary
                            : Colortheme.labelPrimary,
                      ),
                      side: WidgetStatePropertyAll(
                        BorderSide(color: Colortheme.primaryNormal, width: 1.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Cancel",
                        style: Theme.of(
                          context,
                        ).textTheme.displayLarge?.copyWith(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colortheme.labelPrimary
                                  : Colortheme.labelTertiary,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colortheme.primaryNormal,
                      ),
                      side: WidgetStatePropertyAll(
                        BorderSide(color: Colortheme.primaryNormal, width: 1.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Remove",
                        style: Theme.of(
                          context,
                        ).textTheme.displayLarge?.copyWith(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colortheme.labelTertiary
                                  : Colortheme.labelPrimary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
