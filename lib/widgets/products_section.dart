import 'package:flutter/material.dart';

import '../data/products_data.dart';
import 'product_item.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: ProductsData.coffeeProducts.length,
                itemBuilder: (ctx, i) {
                  return ProductItem(product: ProductsData.coffeeProducts[i]);
                }),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Coffee beans",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: ProductsData.beansProducts.length,
                itemBuilder: (ctx, i) {
                  return ProductItem(
                    product: ProductsData.beansProducts[i],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
