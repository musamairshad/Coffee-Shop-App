import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum ProductType {
  coffee,
  beans,
}

class Product {
  Product({
    required this.productTitle,
    required this.productSubtitle,
    required this.productPrice,
    required this.productRating,
    required this.productReviews,
    required this.productImage,
    required this.productDescription,
    required this.productType,
    this.isFavorite = false,
  }) : productId = uuid.v4();

  final String productId;
  final String productTitle;
  final String productSubtitle;
  final double productPrice;
  final double productRating;
  final int productReviews;
  final String productImage;
  final String productDescription;
  final ProductType productType;
  bool isFavorite;
}
