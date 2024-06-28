import 'package:coffee_shop_app/providers/favorites_provider.dart';
// import 'package:coffee_shop_app/views/home_screen.dart';
// import 'package:coffee_shop_app/views/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/home_screen.dart';

void main() => runApp(const CoffeeShopApp());

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FavoritesProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
