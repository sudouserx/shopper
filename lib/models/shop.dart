import 'package:flutter/material.dart';
import 'package:onlineshop/models/item.dart';

class Shop extends ChangeNotifier {
  // mock list of items for sale
  List<Item> itemShop = [
    Item(
      isFavorite: false,
      name: 'Smartphone X',
      price: 699.99,
      description:
          'A high-performance smartphone with a sleek design and cutting-edge features.',
      features: [
        '6.5-inch OLED display',
        '128GB storage',
        '5G enabled',
        'Triple-camera system'
      ],
      discount: 10.0,
      imageUrl: 'smartphone.jpeg',
      rating: 4.5,
      reviews: [
        'Great phone!',
        'Battery life could be better.',
        'Amazing display quality.'
      ],
    ),
    Item(
      isFavorite: false,
      name: 'Headphones',
      price: 199.99,
      description:
          'Noise-cancelling over-ear headphones with exceptional sound quality.',
      features: [
        'Active noise cancellation',
        '30-hour battery life',
        'Bluetooth 5.0',
        'Comfortable fit'
      ],
      discount: 15.0,
      imageUrl: 'headphone.jpeg',
      rating: 4.7,
      reviews: [
        'Crystal-clear audio!',
        'Super comfortable.',
        'Worth the price.'
      ],
    ),
    Item(
      isFavorite: false,
      name: 'Smartwatch 2.0',
      price: 249.99,
      description:
          'Advanced smartwatch with health tracking and customizable watch faces.',
      features: [
        'Heart rate monitor',
        'Sleep tracking',
        'GPS',
        'Water-resistant up to 50m'
      ],
      discount: 20.0,
      imageUrl: 'watch.jpeg',
      rating: 4.3,
      reviews: [
        'Very useful for workouts.',
        'Stylish and functional.',
        'Highly recommend it.'
      ],
    ),
    Item(
      isFavorite: false,
      name: 'Gaming Laptop Y',
      price: 1499.99,
      description:
          'Powerful gaming laptop with high-end graphics and fast performance.',
      features: [
        '15.6-inch FHD display',
        '16GB RAM',
        '1TB SSD',
        'RTX 3070 GPU'
      ],
      discount: 5.0,
      imageUrl: 'gaminglaptop.jpeg',
      rating: 4.8,
      reviews: [
        'Handles any game effortlessly.',
        'Fantastic build quality.',
        'Best gaming laptop I\'ve owned.'
      ],
    ),
    Item(
      isFavorite: false,
      name: 'Bluetooth Speaker Z',
      price: 89.99,
      description:
          'Portable Bluetooth speaker with high-quality sound and long battery life.',
      features: [
        '360° sound',
        '12-hour battery life',
        'Water-resistant',
        'Compact design'
      ],
      discount: 12.0,
      imageUrl: 'bluetoothspeaker.jpeg',
      rating: 4.6,
      reviews: [
        'Amazing sound clarity!',
        'Perfect for outdoor use.',
        'Compact and powerful.'
      ],
    ),
    Item(
      isFavorite: false,
      name: '4K Ultra HD TV',
      price: 999.99,
      description:
          'A stunning 4K Ultra HD TV with vibrant colors and smart features.',
      features: [
        '55-inch 4K display',
        'HDR10 support',
        'Smart TV capabilities',
        'Dolby Atmos sound'
      ],
      discount: 25.0,
      imageUrl: 'tv.jpeg',
      rating: 4.9,
      reviews: [
        'Picture quality is incredible.',
        'Easy to set up.',
        'Worth every penny!'
      ],
    ),
  ];

  // get list of items for sale
  List<Item> getItemList() {
    return itemShop;
  }

  // save items
  void toggleFavorite(Item item) {
    item.isFavorite = !item.isFavorite;
    notifyListeners();
  }
}
