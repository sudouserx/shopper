import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:onlineshop/components/my_button.dart';
import 'package:onlineshop/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // main scaffold ui
        Scaffold(
          backgroundColor: Colors.grey.shade200,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Item Image
                Image.asset(
                  item.imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),

                // Name and Price
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
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
                              ),
                            ),
                    ],
                  ),
                ),

                const Divider(height: 20, thickness: 1),

                // Description
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    item.description,
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 10),

                // Features
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Features",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: item.features.length,
                    itemBuilder: (context, index) {
                      return Text(
                        "- ${item.features[index]}",
                        style: const TextStyle(fontSize: 14),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),

                // Reviews and Rating
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Reviews",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: item.reviews.length,
                          itemBuilder: (context, index) {
                            return Text(
                              "- ${item.reviews[index]}",
                              style: const TextStyle(fontSize: 14),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      StarRating(
                        rating: item.rating,
                        starCount: 5,
                        size: 20.0,
                      ),
                    ],
                  ),
                ),

                // Spacer(),
                SizedBox(
                  height: 25,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: MyButton(title: 'Add to cart'),
                )
              ],
            ),
          ),
        ),

        //back button
        Opacity(
          opacity: 0.8,
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 25, top: 25),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios_new_rounded)),
            ),
          ),
        )
      ],
    );
  }
}
