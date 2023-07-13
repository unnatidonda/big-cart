import 'package:big_cart/big_cart/shoping_information.dart';
import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';

class ShoppingMethod extends StatefulWidget {
  const ShoppingMethod({Key? key}) : super(key: key);

  @override
  State<ShoppingMethod> createState() => _ShoppingMethodState();
}

class _ShoppingMethodState extends State<ShoppingMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AllNames(
              name: "Shipping method",
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 50),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6CC51D),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/done.png",
                      width: 12,
                      height: 16,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/line.png",
                  width: 86,
                  height: 2,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6CC51D),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/line.png",
                  width: 86,
                  height: 3,
                  color: const Color(0xFFE8E9E9),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Color(0xFF868889),
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 15),
                Container(
                  height: 116,
                  width: 360,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Text(
                              "Standard Delivery",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Order will be delivered between 3 - 4 business\ndays straights to your doorstep.",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF868889),
                            ),
                          ),
                          SizedBox(width: 60),
                          Text(
                            "\$ 3",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6CC51D),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 15),
                Container(
                  height: 116,
                  width: 360,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Text(
                              "Next Day Delivery",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Order will be delivered between 3 - 4 business\ndays straights to your doorstep.",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF868889),
                            ),
                          ),
                          SizedBox(width: 60),
                          Text(
                            "\$ 3",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6CC51D),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 15),
                Container(
                  height: 116,
                  width: 360,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Text(
                              "Nominated Delivery",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Order will be delivered between 3 - 4 business\ndays straights to your doorstep.",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF868889),
                            ),
                          ),
                          SizedBox(width: 60),
                          Text(
                            "\$ 3",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6CC51D),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 220),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: StartedContainer(
                      elevated: "Next",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShoppingInformation(),
                          ),
                        );
                      },
                      width: 360,
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
