import 'package:get/get.dart';
import 'package:sammis_hub/features/Cart/presentation/controllers/cart_controller.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/controller/product_controller.dart';
import 'package:sammis_hub/features/HomeScreen/data/dataSource/product_remote_data_source.dart';
import 'package:sammis_hub/features/HomeScreen/data/repository/product_repository_impl.dart';
import 'package:sammis_hub/features/HomeScreen/domain/repository/product_repository.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Data sources
    Get.lazyPut<ProductRemoteDataSource>(() => ProductRemoteDataSourceImpl());

    // Repositorys
    Get.lazyPut<ProductRepository>(
      () => ProductRepositoryImpl(Get.find<ProductRemoteDataSource>()),
    );

    // Controllers
    Get.lazyPut<ProductController>(
      () => ProductController(Get.find<ProductRepository>()),
    );
    Get.lazyPut<CartController>(()=>CartController());
  }
}
