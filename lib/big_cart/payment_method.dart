import 'package:big_cart/big_cart/order_success.dart';
import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';
import '../common/textfield_screeen.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AllNames(
              name: "Payment Method",
            ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/done.png",
                      width: 12,
                      height: 16,
                    ),
                  ),
                ),
                // Text(
                //   "Delivery",
                //   style: TextStyle(
                //     fontWeight: FontWeight.w500,
                //     fontFamily: "Poppins",
                //     fontSize: 15,
                //     color: Color(0xFF),
                //   ),
                // ),
                Image.asset(
                  "assets/images/line.png",
                  width: 86,
                  height: 3,
                  color: const Color(0xFF6CC51D),
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
                      "3",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  height: 102,
                  width: 112,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Image.asset(
                        "assets/images/paypal.png",
                        width: 23,
                        height: 26,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Paypal",
                        style: TextStyle(
                          color: Color(0xFF868889),
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 102,
                  width: 112,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Image.asset(
                        "assets/images/Credit _Card.png",
                        width: 32,
                        height: 23,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Credit Card",
                        style: TextStyle(
                          color: Color(0xFF868889),
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 102,
                  width: 112,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Image.asset(
                        "assets/images/apple_pay.png",
                        width: 22,
                        height: 26,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Apple pay",
                        style: TextStyle(
                          color: Color(0xFF868889),
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Image.asset(
                  "assets/images/card.png",
                  height: 189,
                  width: 380,
                ),
                const Positioned(
                  top: 60,
                  left: 20,
                  child: Text(
                    "XXXX XXXX XXXX 8790",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                const Positioned(
                  top: 140,
                  left: 20,
                  child: Text(
                    "Card holder",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                const Positioned(
                  top: 160,
                  left: 20,
                  child: Text(
                    "Russell austin",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                const Positioned(
                  top: 140,
                  left: 290,
                  child: Text(
                    "Expires\n01 / 22",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                SizedBox(height: 15),
                TextFieldScreen(
                  name: "Name on the card",
                  image: "assets/images/person.png",
                ),
                SizedBox(height: 15),
                TextFieldScreen(
                  name: "Name on the card",
                  image: "assets/images/Credit _Card.png",
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(20),
                        isDense: true,
                        border: InputBorder.none,
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/calendar.png",
                                height: 26,
                                width: 26,
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                "Month / Year",
                                style: TextStyle(
                                  color: Color(0xFF9E9E9E),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        isDense: true,
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(14),
                          child: Row(
                            children: [
                              Icon(
                                Icons.lock_outline_rounded,
                                color: Color(0xFF9E9E9E),
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "CVV",
                                style: TextStyle(
                                  color: Color(0xFF9E9E9E),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 120),
            StartedContainer(
              elevated: "Make a  payment",
              height: 60,
              width: 360,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderSuccess(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
