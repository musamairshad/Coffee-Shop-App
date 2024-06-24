import 'package:coffee_shop_app/widgets/products_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../widgets/dot_indicator.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  var _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        backgroundColor: kBgColor,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/appbar_icon.png")),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: kBgColor,
        indicatorColor: kPrimaryColor,
        selectedIndex: _currentPageIndex,
        elevation: 0,
        height: 50,
        onDestinationSelected: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
      // bottomNavigationBar: const NavBar(),
      body: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                child: Text(
                  "Find the best \ncoffee for you",
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 25),
                height: 50,
                width: 335,
                decoration: BoxDecoration(
                  color: const Color(0xff141921),
                  borderRadius: BorderRadius.circular(15),
                  // border: Border.all(width: 1, color: Colors.white)
                ),
                child: TextField(
                  cursorColor: kPrimaryColor,
                  style: const TextStyle(
                    color: kPrimaryColor,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Text(
                      "Find Your Coffee...",
                      style: GoogleFonts.poppins(
                        color: const Color(0xff52555A),
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff52555A),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TabBar(
                // indicatorSize: TabBarIndicatorSize.label,
                indicator: const DotIndicator(color: kPrimaryColor, radius: 4),
                tabAlignment: TabAlignment.start,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                labelStyle: GoogleFonts.poppins(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w600,
                ),
                isScrollable: true,
                dividerColor: kBgColor,
                labelColor: kPrimaryColor,
                indicatorColor: kPrimaryColor,
                unselectedLabelColor: const Color(0xff52555A),
                controller: tabController,
                tabs: const [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Cappuccino",
                  ),
                  Tab(
                    text: "Espresso",
                  ),
                  Tab(
                    text: "Americano",
                  ),
                  Tab(
                    text: "Macchiato",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 375,
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    ProductsSection(),
                    Text(
                      "Cappuccino",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Espresso",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Americano",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Macchiato",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Text("Cart"),
        const FavoritesScreen(),
        const Text("Notifications"),
      ][_currentPageIndex],
    );
  }
}
