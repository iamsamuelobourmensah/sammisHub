import 'package:flutter/material.dart';

class ProductDetailscreenImageContainer extends StatelessWidget {
  const ProductDetailscreenImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(  20),
        image: DecorationImage(
          image: AssetImage("assets/images/electronics.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}