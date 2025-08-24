import 'package:sammis_hub/features/HomeScreen/domain/entities/category_entity.dart';

abstract class CategoryRepository {
  List<CategoryEntity> getCategories();
}