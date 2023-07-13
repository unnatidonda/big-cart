import 'package:flutter/material.dart';

import '../common/all_names.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  const AllNames(
                    name: "My Order",
                  ),
                  const SizedBox(width: 130),
                  Image.asset(
                    "assets/images/filtter.png",
                    height: 20,
                    width: 22,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
