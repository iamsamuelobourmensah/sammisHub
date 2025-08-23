import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/carousel_widget.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/category_widget.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/home_screen_app_bar_widget.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/home_screen_product_card.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/search_bar.dart';
import 'package:sammis_hub/features/HomeScreen/data/repository/category_local_data_impl.dart';
import 'package:sammis_hub/features/HomeScreen/domain/entities/category_entity.dart';
import 'package:sammis_hub/features/HomeScreen/domain/repository/category_repository.dart';
import 'package:sammis_hub/features/Product/presentation/screens/product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CategoryRepository categoryRepository = CategoryLocalDataImpl();

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = categoryRepository.getCategories();
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeScreenAppBarWidget(
                  userLocation: "Paris, France",
                  userName: "John Robert",
                ), // appBar
            
                Column(
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
                        Text("Featured Products", style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        //  fontSize: 20,
                          color: Theme.of(context).brightness == Brightness.light? Colortheme.labelPrimary : Colortheme.labelTertiary,
                          fontWeight: FontWeight.w900,
                          )),
                          Text("See all", style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        //  fontSize: 20,
                          color:Colortheme.primaryNormal,
                          fontWeight: FontWeight.w900,
                          )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        //childAspectRatio: 0.95,
                        mainAxisExtent: 210,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen(),
                              ),
                            );
                          },
                          child: HomeScreenProductCard(),
                        );
                      },
                      itemCount: 10,
                     shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
