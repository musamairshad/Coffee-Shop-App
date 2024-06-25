import 'package:flutter/material.dart';

import '../models/product.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Product> favoriteProducts = [];
}
