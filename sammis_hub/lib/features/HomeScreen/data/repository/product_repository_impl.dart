import 'package:sammis_hub/features/HomeScreen/data/model/product_model.dart';
import 'package:sammis_hub/features/HomeScreen/domain/repository/product_repository.dart';
import 'package:sammis_hub/features/HomeScreen/data/dataSource/product_remote_data_source.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<ProductModel>> fetchProducts() {
    return remoteDataSource.fetchProducts();
  }
}
