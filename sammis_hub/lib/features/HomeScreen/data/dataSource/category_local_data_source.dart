// features/category/data/category_data.dart
import 'package:sammis_hub/features/HomeScreen/domain/entities/category_entity.dart';



const List<CategoryEntity> categories = [
  CategoryEntity(
    id: 1,
    name: "Clothes",
    slug: "clothes",
    image: "assets/images/cloth.jpeg",
  ),
  CategoryEntity(
    id: 2,
    name: "Shoes",
    slug: "shoes",
    image: "assets/images/shoes.jpeg",
  ),
  CategoryEntity(
    id: 3,
    name: "Electronics",
    slug: "electronics",
    image: "assets/images/electronics.jpeg",
  ),
  CategoryEntity(
    id: 4,
    name: "Furnitures",
    slug: "furnitures",
    image: "assets/images/furnitures.jpeg",
  ),
  CategoryEntity(
    id: 5,
    name: "Miscellaneous",
    slug: "miscellaneous",
    image: "assets/images/miscellaneous.jpg",
  ),

];
