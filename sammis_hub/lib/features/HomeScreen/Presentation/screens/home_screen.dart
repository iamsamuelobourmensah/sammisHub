import 'package:flutter/material.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/category_widget.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/home_screen_app_bar_widget.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/search_bar.dart';
import 'package:sammis_hub/features/HomeScreen/data/repository/category_local_data_impl.dart';
import 'package:sammis_hub/features/HomeScreen/domain/entities/category_entity.dart';
import 'package:sammis_hub/features/HomeScreen/domain/repository/category_repository.dart';

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
                    height: screenSize.height * 0.4,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
