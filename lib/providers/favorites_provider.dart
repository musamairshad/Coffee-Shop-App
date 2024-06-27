import 'package:flutter/material.dart';

import '../models/product.dart';

class FavoritesProvider with ChangeNotifier {
  static final List<Product> favoriteProducts = [];

  void toggleFavoriteStatus(Product product) {
    product.isFavorite = !product.isFavorite;
    if (product.isFavorite) {
      favoriteProducts.add(product);
    } else {
      favoriteProducts.remove(product);
    }
    notifyListeners();
  }
}
