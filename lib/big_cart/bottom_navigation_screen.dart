import 'package:big_cart/big_cart/product_detail.dart';
import 'package:flutter/material.dart';

import 'account_screen.dart';
import 'favorites_screen.dart';
import 'home_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;
  List<Widget> ScreenList = [
    const ProductDetail(),
    const AccountScreen(),
    const FavoritesScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        // backgroundColor: Colors.white,
        selectedLabelStyle: const TextStyle(),
        showSelectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xFF808080),
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            backgroundColor: Color(0xFFFFFFFF),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            backgroundColor: Color(0xFFFFFFFF),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            backgroundColor: Color(0xFFFFFFFF),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            backgroundColor: Color(0xFFFFFFFF),
            label: 'Profile',
          ),
        ],
      ),
      // bottomNavigationBar: NavigationBar(
      //   selectedIndex: currentIndex,
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      //   height: 49,
      //   backgroundColor: Color(0xFFFFFFFF),
      //   indicatorColor: Color(0xFF1D951A),
      //   destinations: const [
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.home_outlined, color: Color(0xFFFFFFFF)),
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(CupertinoIcons.tickets, color: Color(0xFFFFFFFF)),
      //       icon: Icon(CupertinoIcons.tickets),
      //       label: 'Book',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.bookmark_border_outlined, color: Color(0xFFFFFFFF)),
      //       icon: Icon(Icons.bookmark_border_outlined),
      //       label: 'Saved',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.person_outline_sharp, color: Color(0xFFFFFFFF)),
      //       icon: Icon(Icons.person_outline_sharp),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
