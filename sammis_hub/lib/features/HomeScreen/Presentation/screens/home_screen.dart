import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/controller/product_controller.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/carousel_widget.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/category_widget.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/home_screen_app_bar_widget.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/home_screen_product_card.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/search_bar.dart';
import 'package:sammis_hub/features/HomeScreen/data/model/product_model.dart';
import 'package:sammis_hub/features/HomeScreen/data/repository/category_local_data_impl.dart';
import 'package:sammis_hub/features/HomeScreen/domain/entities/category_entity.dart';
import 'package:sammis_hub/features/HomeScreen/domain/repository/category_repository.dart';
import 'package:sammis_hub/features/Product/presentation/screens/product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CategoryRepository categoryRepository = CategoryLocalDataImpl();

final productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    final List<CategoryEntity> categories = categoryRepository.getCategories();
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenSize.height * 0.1), 
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: HomeScreenAppBarWidget(
              userLocation: "Paris, France",
              userName: "John Robert",
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: screenSize.height * 0.02),
              CustomSearchBar(),
              SizedBox(height: screenSize.height * 0.02),
              SizedBox(
                height: screenSize.height * 0.1,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                      categoryName: categories[index].name,
                      categoryImage: categories[index].image,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: screenSize.height * 0.015);
                  },
                  itemCount: categories.length,
                ),
              ),
              SizedBox(height: screenSize.height * 0.01),
              CarouselWidget(),
              SizedBox(height: screenSize.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Products",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colortheme.labelPrimary
                          : Colortheme.labelTertiary,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "See all",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: Colortheme.primaryNormal,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.02),

              // retriving the product and diplay it in a future builder
              FutureBuilder(future: productController.fetchProducts(), builder: (context,snapshot){
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator());
                }else if(snapshot.hasError){
                  return Center(child: Text('Error: ${snapshot.error}'));
                }else{
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                  final ProductModel? product = snapshot.data?[index];

                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProductDetailsScreen(),
                            ),
                          );
                        },
                        child: HomeScreenProductCard(
                          imageUrl: product?.images?[0] ?? '',
                          productName: product?.title ?? '',
                          productPrice: product?.price.toString() ?? '',
                        ),
                      );
                    },
                    itemCount: snapshot.data?.length ?? 0,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                  );
                }
              })

            ],
          ),
        ),
      ),
    );
  }
}