/// A class representing an item in the catalog or inventory.
class Item {
  /// The name of the item.
  final String name;

  /// The price of the item.
  final double price;

  /// The discount percentage on the item's price.
  final double discount;

  /// A list of features or specifications of the item.
  final List<String> features;

  /// The average customer rating for the item (out of 5).
  final double rating;

  /// A list of reviews given by customers.
  final List<String> reviews;

  /// A detailed description of the item.
  final String description;

  /// A URL to the item's image.
  final String imageUrl;

  /// Whether the item is marked as a favorite by the user.
  late bool isFavorite;

  /// Creates a new `Item` instance with the given properties.
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
