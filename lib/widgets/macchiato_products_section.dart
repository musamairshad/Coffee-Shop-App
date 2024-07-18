import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/products_data.dart';
import 'product_item.dart';

class MacchiatoProductsSection extends StatelessWidget {
  const MacchiatoProductsSection({super.key});

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
                itemCount: ProductsData.macchiatoCoffeeProducts.length,
                itemBuilder: (ctx, i) {
                  return ProductItem(
                      product: ProductsData.macchiatoCoffeeProducts[i]);
                }),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Coffee beans",
              style: GoogleFonts.poppins(
                color: Colors.white,
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
