import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/circle_avatar_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.categoryName, required this.categoryImage});

final String categoryName;
final String categoryImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatarWidget(
          radius: 25,
          backgroundImage: AssetImage(categoryImage),
        ),

        Text(
          categoryName,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
            //fontWeight: FontWeight.bold,
            color: Theme.of(context).brightness == Brightness.light
                ? Colortheme.labelPrimary
                : Colortheme.labelTertiary,
          ),
        ),
      ],
    );
  }
}