import '../models/product.dart';

class ProductsData {
  static final List<Product> _products = [
    Product(
        productTitle: "Cappuccino",
        productSubtitle: "With Steamed Milk",
        productPrice: 4.20,
        productRating: 4.5,
        productReviews: 6879,
        productImage: "assets/images/coffee_image_1.png",
        productDescription:
            "Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world's coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed!",
        productType: ProductType.coffee),
    Product(
      productTitle: "Cappuccino",
      productSubtitle: "With Foam",
      productPrice: 4.20,
      productRating: 4.2,
      productReviews: 6879,
      productImage: "assets/images/coffee_image_2.png",
      productDescription:
          "Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world's coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed!",
      productType: ProductType.coffee,
    ),
    Product(
      productTitle: "Cappuccino",
      productSubtitle: "With Steamed Milk",
      productPrice: 4.2,
      productRating: 4.5,
      productReviews: 6879,
      productImage: "assets/images/coffee_image_3.png",
      productDescription:
          "Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world's coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed!",
      productType: ProductType.coffee,
    ),
    Product(
      productTitle: "Robusta Beans",
      productSubtitle: "Medium Roasted",
      productPrice: 4.20,
      productRating: 4.5,
      productReviews: 6879,
      productImage: "assets/images/beans_image_1.png",
      productDescription:
          "Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world's coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed! ",
      productType: ProductType.beans,
    ),
    Product(
      productTitle: "Cappuccino",
      productSubtitle: "With Steamed Milk",
      productPrice: 4.20,
      productRating: 4.2,
      productReviews: 6879,
      productImage: "assets/images/beans_image_2.png",
      productDescription:
          "Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world's coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed! ",
      productType: ProductType.beans,
    ),
    Product(
      productTitle: "Cappuccino",
      productSubtitle: "With Steamed Milk",
      productPrice: 4.20,
      productRating: 4.5,
      productReviews: 6879,
      productImage: "assets/images/beans_image_3.png",
      productDescription:
          "Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world's coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed! ",
      productType: ProductType.beans,
    ),
    Product(
      productTitle: "Cappuccino",
      productSubtitle: "With Steamed Milk",
      productPrice: 4.20,
      productRating: 4.5,
      productReviews: 6879,
      productImage: "assets/images/beans_image_4.png",
      productDescription:
          "Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world's coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed! ",
      productType: ProductType.beans,
    ),
  ];

  static List<Product> get coffeeProducts {
    return _products
        .where(
          (p) => p.productType == ProductType.coffee,
        )
        .toList();
  }

  static List<Product> get beansProducts {
    return _products
        .where(
          (p) => p.productType == ProductType.beans,
        )
        .toList();
  }
}
