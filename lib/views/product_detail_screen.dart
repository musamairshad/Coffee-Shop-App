import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../constants/colors.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.item});

  final Product item;

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat('#,###');
    final formattedProductReviews = formatter.format(item.productReviews);

    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: item.productId,
                  child: Image.asset(
                    item.productImage,
                    fit: BoxFit.cover,
                    height: 500,
                    width: double.maxFinite,
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  top: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff21262E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff21262E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0.2,
                  child: Container(
                    height: 150,
                    width: 395,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      color: const Color(0xff000000).withOpacity(0.5),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                item.productTitle,
                                style: GoogleFonts.poppins(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                item.productSubtitle,
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: const Color(0xffAEAEAE),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: kPrimaryColor,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    item.productRating.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 21,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "($formattedProductReviews)",
                                    style: const TextStyle(
                                      color: Color(0xffAEAEAE),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: item.productType == ProductType.coffee
                              ? const EdgeInsets.only(top: 20, left: 50)
                              : const EdgeInsets.only(top: 20, left: 45),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xff141921),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/coffee_icon.png",
                                          // height: 35,
                                          // width: 35,
                                          // fit: BoxFit.contain,
                                          color: kPrimaryColor,
                                        ),
                                        Text(
                                          "Coffee",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.5,
                                            color: const Color(0xffAEAEAE),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xff141921),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/drop_icon.png",
                                          // height: 20,
                                          // width: 20,
                                          // fit: BoxFit.contain,
                                          color: kPrimaryColor,
                                        ),
                                        const SizedBox(
                                          height: 4.5,
                                        ),
                                        Text(
                                          "Milk",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: const Color(0xffAEAEAE),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 17.5,
                              ),
                              Container(
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff141921),
                                ),
                                child: Center(
                                  child: Text(
                                    // item.productRoastLevel,
                                    "Medium Roasted",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
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
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                "Description",
                style: GoogleFonts.poppins(
                  color: const Color(0xffAEAEAE),
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                item.productDescription,
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Column(
                    children: [
                      const Text(
                        "Price",
                        style: TextStyle(
                          color: Color(0xffAEAEAE),
                          fontSize: 16,
                        ),
                      ),
                      // Text(
                      //   "\$ ${item.productPrice.toStringAsFixed(2)}",
                      //   style: const TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.white,
                      //     fontSize: 20,
                      //   ),
                      // ),
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: "\$",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                            const WidgetSpan(
                              child: SizedBox(
                                width: 4,
                              ),
                            ),
                            TextSpan(
                              text: item.productPrice.toStringAsFixed(2),
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    fixedSize: const Size(240, 60),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
