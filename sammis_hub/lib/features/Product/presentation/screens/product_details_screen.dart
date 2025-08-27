import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/features/Cart/Domain/entities/cart_entity.dart';
import 'package:sammis_hub/features/Cart/presentation/controllers/cart_controller.dart';
import 'package:sammis_hub/features/HomeScreen/data/model/product_model.dart';
import 'package:sammis_hub/features/Product/presentation/widgets/product_detail_screen_price_card.dart';
import 'package:sammis_hub/features/Product/presentation/widgets/product_detailscreen_image_contianer.dart';
import 'package:sammis_hub/features/Product/presentation/widgets/product_quantity_and_ratingstar_row.dart';
import 'package:sammis_hub/features/Product/presentation/widgets/product_screen_add_to_cart_button.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productModel});
  final ProductModel? productModel;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  CartController _cartController = Get.find<CartController>();
  int quantity = 1;

  int get totalPrice => (widget.productModel?.price ?? 0) * quantity;

  void onIncrement() {
    setState(() {
      quantity++;
    });
  }

  void onDecrement() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Colortheme.labelPrimary
                    : Colortheme.labelTertiary,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor:
            Theme.of(context).brightness == Brightness.light
                ? Colors.white
                : Colors.black,
        title: Text(
          'Product Details',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Colortheme.labelPrimary
                    : Colortheme.labelTertiary,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ProductDetailscreenImageContainer(
              imageUrl: widget.productModel?.images?[0],
            ),
            SizedBox(height: screenSize.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.productModel?.title ?? 'Product Name',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Colortheme.labelPrimary
                              : Colortheme.labelTertiary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Text(
                  'GHC ${totalPrice.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colortheme.labelPrimary
                            : Colortheme.labelTertiary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenSize.height * 0.02),
            ProductQuantityAndRatingstarRow(quantity: quantity, onIncrement: onIncrement, onDecrement: onDecrement),
            SizedBox(height: screenSize.height * 0.02),
            TabBar(
              controller: _tabController,
              labelColor: Colortheme.primaryNormal,
              unselectedLabelColor:
                  Theme.of(context).brightness == Brightness.light
                      ? Colortheme.labelPrimary
                      : Colortheme.labelTertiary,
              indicatorColor: Colortheme.primaryNormal,
              tabs: [Tab(text: 'Description'), Tab(text: 'Reviews')],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SizedBox(
                    height: screenSize.height * 0.2,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.productModel?.description ??
                              'This is a detailed description of the product. It provides all the necessary information that a customer might need before making a purchase decision.',
                          style: Theme.of(
                            context,
                          ).textTheme.displayMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colortheme.labelPrimary
                                    : Colortheme.labelTertiary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.2,
                    child: SingleChildScrollView(
                      child: Text(
                        'Customer Reviews:\n\n1. "Great product! Highly recommend."\n2. "Good value for money."\n3. "Exceeded my expectations!"',
                        style: Theme.of(
                          context,
                        ).textTheme.displaySmall?.copyWith(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colortheme.labelPrimary
                                  : Colortheme.labelTertiary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductDetailScreenPriceCard(
                  price:"GHC${totalPrice.toStringAsFixed(2)}",
                ),
                ProductScreenAddToCartButton(onPressed: () {
                  _cartController.addToCart(widget.productModel!);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Item added to cart successfully')),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
