class CategoryItem {
  final int? id;
  final String? name;
  final String? imagePath;

  CategoryItem({this.id, this.name, this.imagePath});
}

var categoryItemsDemo = [
  CategoryItem(
      name: 'Buah dan Sayur',
      imagePath: 'assets/images/categories_images/fruit.png'),
  CategoryItem(
      name: 'Minyak Goreng',
      imagePath: 'assets/images/categories_images/oil.png'),
  CategoryItem(
      name: 'Daging & Ikan',
      imagePath: 'assets/images/categories_images/meat.png'),
  CategoryItem(
      name: 'Roti & Snacks',
      imagePath: 'assets/images/categories_images/bakery.png'),
  CategoryItem(
      name: 'Susu & Telur',
      imagePath: 'assets/images/categories_images/fruit.png'),
  CategoryItem(
      name: 'Minuman',
      imagePath: 'assets/images/categories_images/beverages.png')
];
