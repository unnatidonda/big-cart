import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';

class CartEmpty extends StatefulWidget {
  const CartEmpty({super.key});

  @override
  State<CartEmpty> createState() => _CartEmptyState();
}

class _CartEmptyState extends State<CartEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AllNames(
              name: "Shopping Cart",
            ),
            const SizedBox(height: 220),
            Image.asset(
              "assets/images/empty.png",
              height: 115,
              width: 91,
            ),
            const Text(
              "Your cart is empty !",
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 20,
                fontWeight: FontWeight.w800,
                fontFamily: "Poppins",
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              "You will get a response within\n a few minutes.",
              style: TextStyle(
                color: Color(0xFF868889),
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(height: 300),
            const Row(
              children: [
                SizedBox(width: 20),
                StartedContainer(
                  name: "Start shopping",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
