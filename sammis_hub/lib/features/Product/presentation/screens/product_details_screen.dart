import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/features/Product/presentation/widgets/product_detail_screen_price_card.dart';
import 'package:sammis_hub/features/Product/presentation/widgets/product_detailscreen_image_contianer.dart';
import 'package:sammis_hub/features/Product/presentation/widgets/product_quantity_and_ratingstar_row.dart';
import 'package:sammis_hub/features/Product/presentation/widgets/product_screen_add_to_cart_button.dart';

class ProductDetailsScreen extends StatefulWidget {
   const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;

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
             SizedBox(
              height: screenSize.height * 0.02,
            ),
            ProductQuantityAndRatingstarRow(),
              SizedBox(
              height: screenSize.height * 0.02,
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colortheme.primaryNormal,
              unselectedLabelColor: Theme.of(context).brightness == Brightness.light
                      ? Colortheme.labelPrimary
                      : Colortheme.labelTertiary,
              indicatorColor: Colortheme.primaryNormal,
              tabs: [
                Tab(text: 'Description'),
                Tab(text: 'Reviews'),
              ],
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children:  [
                SizedBox(
                  height: screenSize.height * 0.2,
                  child: SingleChildScrollView(
                    child: Text(
                      'This is a detailed description of the product. It provides all the necessary information that a customer might need before making a purchase. The product is made of high-quality materials and has received excellent reviews from previous buyers. It is designed to meet the needs of modern consumers and offers great value for money.'
                      'This is a detailed description of the product. It provides all the necessary information that a customer might need before making a purchase. The product is made of high-quality materials and has received excellent reviews from previous buyers. It is designed to meet the needs of modern consumers and offers great value for money.'
                      'This is a detailed description of the product. It provides all the necessary information that a customer might need before making a purchase. The product is made of high-quality materials and has received excellent reviews from previous buyers. It is designed to meet the needs of modern consumers and offers great value for money.'
                      'This is a detailed description of the product. It provides all the necessary information that a customer might need before making a purchase. The product is made of high-quality materials and has received excellent reviews from previous buyers. It is designed to meet the needs of modern consumers and offers great value for money.'
                      'This is a detailed description of the product. It provides all the necessary information that a customer might need before making a purchase. The product is made of high-quality materials and has received excellent reviews from previous buyers. It is designed to meet the needs of modern consumers and offers great value for money.'
                      'This is a detailed description of the product. It provides all the necessary information that a customer might need before making a purchase. The product is made of high-quality materials and has received excellent reviews from previous buyers. It is designed to meet the needs of modern consumers and offers great value for money.',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colortheme.labelPrimary
                            : Colortheme.labelTertiary,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.2,
                  child: SingleChildScrollView(
                    child: Text(
                      'Customer Reviews:\n\n1. "Great product! Highly recommend."\n2. "Good value for money."\n3. "Exceeded my expectations!"',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colortheme.labelPrimary
                            : Colortheme.labelTertiary,
                      ),
                    ),
                  ),
                ),
                
              ]),
            ),
            SizedBox(height: screenSize.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductDetailScreenPriceCard(),
                const ProductScreenAddToCartButton(),
              ],
            )
          ],
        ),
      )
    );
  }
}