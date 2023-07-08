import 'package:flutter/material.dart';

import '../common/all_names.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({super.key});

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const AllNames(
                  name: "My Address",
                ),
                const SizedBox(width: 100),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Color(0xFF000000),
                    size: 25,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
