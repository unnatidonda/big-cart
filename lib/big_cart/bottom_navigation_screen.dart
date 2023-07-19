import 'package:big_cart/big_cart/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

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
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();

    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4, vsync: AnimatedGridState(),
      // vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    // _tabController.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[currentIndex],
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController, // ADD THIS if you need to change your tab programmatically
        initialSelectedTab: "Home",
        labels: const ["Dashboard", "Home", "Profile", "Settings"],
        icons: const [Icons.dashboard, Icons.home, Icons.people_alt, Icons.settings],

        // optional badges, length must be same with labels
        badges: [
          // Default Motion Badge Widget
          const MotionBadgeWidget(
            text: '99+',
            textColor: Colors.white, // optional, default to Colors.white
            color: Colors.red, // optional, default to Colors.red
            size: 18, // optional, default to 18
          ),

          // custom badge Widget
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(2),
            child: const Text(
              '48',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),

          // allow null
          null,

          // Default Motion Badge Widget with indicator only
          const MotionBadgeWidget(
            isIndicator: true,
            color: Colors.red, // optional, default to Colors.red
            size: 5, // optional, default to 5,
            show: true, // true / false
          ),
        ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.blue[600],
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.blue[900],
        tabIconSelectedColor: Colors.white,
        tabBarColor: const Color(0xFFAFAFAF),
        onTabItemSelected: (int value) {
          setState(() {
            // _tabController!.index = value;
            _motionTabBarController!.index = value;
          });
        },
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (value) {
      //     setState(() {
      //       currentIndex = value;
      //     });
      //   },
      //   currentIndex: currentIndex,
      //   // backgroundColor: Colors.white,
      //   selectedLabelStyle: const TextStyle(),
      //   showSelectedLabels: true,
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: const Color(0xFF808080),
      //   type: BottomNavigationBarType.shifting,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       backgroundColor: Color(0xFFFFFFFF),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle_outlined),
      //       backgroundColor: Color(0xFFFFFFFF),
      //       label: 'Book',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite_border_rounded),
      //       backgroundColor: Color(0xFFFFFFFF),
      //       label: 'Saved',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_bag_outlined),
      //       backgroundColor: Color(0xFFFFFFFF),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
