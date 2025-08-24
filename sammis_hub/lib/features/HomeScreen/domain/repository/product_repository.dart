import 'package:sammis_hub/features/HomeScreen/data/model/product_model.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> fetchProducts();
}
