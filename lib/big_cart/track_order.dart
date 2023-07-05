import 'package:flutter/material.dart';

class Track_Order extends StatefulWidget {
  const Track_Order({Key? key}) : super(key: key);

  @override
  State<Track_Order> createState() => _Track_OrderState();
}

class _Track_OrderState extends State<Track_Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                BackButton(
                  color: Color(0xFF000000),
                ),
                SizedBox(width: 80),
                Text(
                  "Track Order",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 15),
                Container(
                  height: 80,
                  width: 360,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEBFFD7),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            "assets/tarck_images/first.png",
                            height: 31.99,
                            width: 32,
                          ),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Order #90897 ",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Placed on October 19 2021 ",
                              style: TextStyle(
                                color: Color(0xFF868889),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Items: 10 Items: \$16.90",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                fontSize: 12,
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
          ],
        ),
      ),
    );
  }
}
