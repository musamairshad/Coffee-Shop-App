import 'package:flutter/material.dart';
import '../constants/colors.dart';

class FavoritesScreen extends StatelessWidget {
  static const routeName = "/favorites";

  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        backgroundColor: kBgColor,
        title: const Text(
          "Favorites",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Got no products added yet!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
