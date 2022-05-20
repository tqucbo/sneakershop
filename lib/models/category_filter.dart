class CategoryFilter {
  final String name;

  CategoryFilter({
    required this.name,
  });
}

List<CategoryFilter> categoryFilters = [
  CategoryFilter(
    name: 'New Arrival',
  ),
  CategoryFilter(
    name: 'Top Trending',
  ),
  CategoryFilter(
    name: 'Featured Products',
  ),
];
