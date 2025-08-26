import 'package:get/get.dart';
import 'package:sammis_hub/features/Cart/Domain/entities/cart_entity.dart';

class CartController extends GetxController {
// contoller to handel cartscreen
  List<CartEntity> cartItems = <CartEntity>[].obs;

  void addToCart(CartEntity item) {
    cartItems.add(item);
    update(); // Notify listeners about the change
  }

  void removeFromCart(CartEntity item) {
    cartItems.remove(item);
    update(); // Notify listeners about the change
  }

  void clearCart() {
    cartItems.clear();
    update(); // Notify listeners about the change
  }

  double get totalPrice {
    double total = 0.0;
    for (var item in cartItems) {
      total += item.price * item.quantity;
    }
    return total;
  }
}