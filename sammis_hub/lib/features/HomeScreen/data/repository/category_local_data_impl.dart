import 'package:sammis_hub/features/HomeScreen/data/dataSource/category_local_data_source.dart';
import 'package:sammis_hub/features/HomeScreen/domain/entities/category_entity.dart';
import 'package:sammis_hub/features/HomeScreen/domain/repository/category_repository.dart';

class CategoryLocalDataImpl implements CategoryRepository {
  @override
  List<CategoryEntity> getCategories() {
    return categories;
  }
}