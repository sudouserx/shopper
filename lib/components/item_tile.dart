import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:onlineshop/models/item.dart';
import 'package:onlineshop/models/shop.dart';
import 'package:provider/provider.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  final void Function()? onTap;

  const ItemTile({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 4,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Item Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                item.imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),

            // Item Name
            Text(
              item.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),

            // Price and Discount
            item.discount > 0
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$${(item.price - item.discount).toStringAsFixed(2)}",
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "\$${item.price}",
                        style: const TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  )
                : Text(
                    "\$${item.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

            const Spacer(),

            // Favorite Icon and Rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Consumer<Shop>(
                  builder: (context, shop, child) => GestureDetector(
                    onTap: () => shop.toggleFavorite(
                        item), // Correctly passing the item to toggleFavorite
                    child: Icon(
                      item.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: item.isFavorite ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
                StarRating(
                  rating: item.rating,
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
