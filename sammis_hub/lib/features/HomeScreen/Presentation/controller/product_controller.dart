// product controller
import 'package:get/get.dart';
import 'package:sammis_hub/features/HomeScreen/data/model/product_model.dart';
import 'package:sammis_hub/features/HomeScreen/domain/repository/product_repository.dart';

class ProductController extends GetxController {
  final ProductRepository _productRepository;

  ProductController(this._productRepository);

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  // Fetch products from the repository
  Future<List<ProductModel>> fetchProducts() async {
    try {
      final products = await _productRepository.fetchProducts();
      return products;
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}
