import 'package:get/get.dart';
import 'package:sammis_hub/features/Cart/Domain/entities/cart_entity.dart';
import 'package:sammis_hub/features/HomeScreen/data/model/product_model.dart';

// contoller to handel cartscreen


class CartController extends GetxController {
  List<ProductModel> cartItems = <ProductModel>[].obs;

  void addToCart(ProductModel item) {
    cartItems.add(item);
    update(); 
  }

  void removeFromCart(ProductModel item) {
    cartItems.remove(item);
    update(); 
  }

  void clearCart() {
    cartItems.clear();
    update(); 
  }

// fuction to calculate price of each cart when the user decrease or increase quantity




}