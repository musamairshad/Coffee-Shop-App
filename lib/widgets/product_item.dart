import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/product.dart';
// import 'package:flutter/widgets.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // overlayColor: const MaterialStatePropertyAll(kPrimaryColor),
      // borderRadius: BorderRadius.circular(25),
      onTap: () {
        // print("Tap!");
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (ctx) => ProductDetailsScreen(item: product),
        //   ),
        // );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            // border: Border.all(width: 0.5, color: Colors.white),
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff252A32),
                kBgColor,
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 100,
                      child: Hero(
                          tag: product.productId,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              product.productImage,
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    Positioned(
                      left: 0,
                      right: 90,
                      top: 0,
                      bottom: 220,
                      child: Container(
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xff000000).withOpacity(0.6),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(25)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      right: 0,
                      top: 0,
                      bottom: 220,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 13,
                            color: kPrimaryColor,
                          ),
                          const SizedBox(
                            width: 2.5,
                          ),
                          Text(
                            product.productRating.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // if (product.productType == ProductType.coffee)

                    Positioned(
                      top: 160,
                      left: 12.5,
                      right: 0,
                      bottom: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.productTitle,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 2.5,
                          ),
                          Text(
                            product.productSubtitle,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 190.5,
                      left: 2.5,
                      right: 0,
                      bottom: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                    text: "\$",
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    )),
                                const WidgetSpan(
                                  child: SizedBox(
                                    width: 4,
                                  ),
                                ),
                                TextSpan(
                                  text: product.productPrice.toStringAsFixed(2),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                            height: 32.5,
                            width: 32.5,
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              style: IconButton.styleFrom(
                                backgroundColor: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
