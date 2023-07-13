import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';
import 'shopping_method.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const AllNames(
                  name: "Shopping Cart",
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFD2FFD0),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 20,
                                  child: Image.asset(
                                    "assets/prodcuts_images/fresh_b_roccoli.png",
                                    height: 56,
                                    width: 55,
                                  ),
                                ),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0, top: 20),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "\$2.22 x 4",
                                    style: TextStyle(
                                      color: Color(0xFF6CC51D),
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "Fresh Broccoli",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 15,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "1.50 lbs",
                                    style: TextStyle(
                                      color: Color(0xFF868889),
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFEE1ED),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 15,
                                  child: Image.asset(
                                    "assets/prodcuts_images/black_grapes.png",
                                    height: 68,
                                    width: 68,
                                  ),
                                ),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0, top: 20),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "\$2.22 x 4",
                                    style: TextStyle(
                                      color: Color(0xFF6CC51D),
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "Black Grapes",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 15,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "1.50 lbs",
                                    style: TextStyle(
                                      color: Color(0xFF868889),
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFCFFD9),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // left: 12,
                                  top: 20,
                                  child: Image.asset(
                                    "assets/prodcuts_images/aocado.png",
                                    height: 51,
                                    width: 74,
                                  ),
                                ),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0, top: 20),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "\$2.22 x 4",
                                    style: TextStyle(
                                      color: Color(0xFF6CC51D),
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "aocado",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 15,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "1.50 lbs",
                                    style: TextStyle(
                                      color: Color(0xFF868889),
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFE6C2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  child: Image.asset(
                                    "assets/prodcuts_images/pineapple.png",
                                    height: 60,
                                    width: 92,
                                  ),
                                ),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0, top: 20),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "\$2.22 x 4",
                                    style: TextStyle(
                                      color: Color(0xFF6CC51D),
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "pineapple",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 15,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "1.50 lbs",
                                    style: TextStyle(
                                      color: Color(0xFF868889),
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 79),
                Container(
                  height: 234,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "CartScreen",
                              style: TextStyle(
                                color: Color(0xFF868889),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontSize: 13,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$56.7",
                              style: TextStyle(
                                color: Color(0xFF868889),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Shipping charges",
                              style: TextStyle(
                                color: Color(0xFF868889),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontSize: 13,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$1.6",
                              style: TextStyle(
                                color: Color(0xFF868889),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Divider(
                          height: 2,
                          color: Color(0xFF868889),
                          thickness: 1,
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Total",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w800,
                                fontFamily: "Poppins",
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$58.2",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w800,
                                fontFamily: "Poppins",
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 30),
                        StartedContainer(
                          elevated: "Checkout",
                          width: 260,
                          height: 60,
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ShoppingMethod(),
                              ),
                            );
                          },
                        ),
                      ],
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
