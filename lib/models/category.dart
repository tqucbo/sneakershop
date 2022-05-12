class Category {
  final String icon, title;

  Category({
    required this.icon,
    required this.title,
  });
}

List<Category> categories = [
  Category(
    icon: 'assets/icons/jordan.svg',
    title: 'Air Jordan 1',
  ),
  Category(
    icon: 'assets/icons/nike.svg',
    title: 'Air Force 1',
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
