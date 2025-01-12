/**
 * 
 * TODO: Documentation on every page !!!
 * 
 */

class Item {
  final String name;
  final double price;
  final double discount;
  final List<String> features;
  final double rating;
  final List<String> reviews;
  final String description;
  final String imageUrl;
  late bool isFavorite;

  Item({
    required this.name,
    required this.price,
    required this.description,
    required this.features,
    required this.discount,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
    required this.isFavorite,
  });
}
  // helper functions

  // feature list to string  ??

  // reviews list to string  ??
