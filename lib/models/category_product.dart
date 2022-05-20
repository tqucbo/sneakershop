class CategoryProduct {
  final String icon, title;

  CategoryProduct({
    required this.icon,
    required this.title,
  });
}

List<CategoryProduct> categorieproducts = [
  CategoryProduct(
    icon: 'assets/icons/jordan.svg',
    title: 'Air Jordan 1',
  ),
  CategoryProduct(
    icon: 'assets/icons/nike.svg',
    title: 'Air Force 1',
  ),
  CategoryProduct(
    icon: 'assets/icons/adidas.svg',
    title: 'Adidas',
  ),
  CategoryProduct(
    icon: 'assets/icons/converse.svg',
    title: 'Converse',
  ),
];
