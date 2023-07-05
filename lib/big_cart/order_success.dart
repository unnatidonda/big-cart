import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';

class OrderSuccess extends StatefulWidget {
  const OrderSuccess({Key? key}) : super(key: key);

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: SafeArea(
        child: Column(
          children: [
            const AllNames(
              name: "Order Success",
            ),
            const SizedBox(height: 200),
            Image.asset(
              "assets/images/success.png",
              width: 105,
              height: 120,
            ),
            const SizedBox(height: 20),
            const Text(
              "Your order was\nsuccesfull !",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              "You will get a response within\n                a few minutes.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF868889),
              ),
            ),
            const SizedBox(height: 200),
            const Row(
              children: [
                SizedBox(width: 12),
                StartedContainer(
                  name: "Track order",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
