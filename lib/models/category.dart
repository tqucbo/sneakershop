import 'package:onlineshop/models/product.dart';

class Category {
  final String icon, title;

  Category({
    required this.icon,
    required this.title,
  });

  List<Category> categories = [
    Category(
      icon: 'assets/icons/nike.svg',
      title: 'Nike',
    ),
    Category(
      icon: 'assets/icons/adidas.svg',
      title: 'Adidas',
    ),
    Category(
      icon: 'assets/icons/converse.svg',
      title: 'Converse',
    ),
  ];
}
