import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  bool switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      const AllNames(
                        name: "My Card",
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle_outline,
                          size: 25,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 381,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 18,
                          width: 57,
                          color: const Color(0xFFEBFFD7),
                          child: const Text(
                            "DEFAULT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF28B446),
                              fontSize: 12.50,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const SizedBox(width: 15),
                            Image.asset(
                              "assets/images/master_card.png",
                              width: 66,
                              height: 66,
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Master Card",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins",
                                    fontSize: 18,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                Text(
                                  "XXXX  XXXX  XXXX  5678",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                    color: Color(0xFF868889),
                                  ),
                                ),
                                Text(
                                  "Expiry : 01/22       CVV : 908",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 70),
                            Image.asset(
                              "assets/images/my card.png",
                              width: 25,
                              height: 25,
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Divider(
                          height: 2,
                          color: Color(0xFFEBEBEB),
                          thickness: 1,
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 15),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20),
                                  isDense: true,
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Color(0xFFF4F5F9),
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.all(14),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.account_circle_outlined,
                                          color: Color(0xFF9E9E9E),
                                          size: 25,
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          "Russell Austin",
                                          style: TextStyle(
                                            color: Color(0xFF868889),
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
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(20),
                                  isDense: true,
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: const Color(0xFFF4F5F9),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/Credit _Card.png",
                                          height: 18,
                                          width: 28,
                                        ),
                                        const SizedBox(width: 20),
                                        const Text(
                                          "XXXX  XXXX  XXXX  5678",
                                          style: TextStyle(
                                            color: Color(0xFF868889),
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
                                    fillColor: const Color(0xFFF4F5F9),
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
                                            "01/22",
                                            style: TextStyle(
                                              color: Color(0xFF868889),
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
                                    fillColor: Color(0xFFF4F5F9),
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
                                            "908",
                                            style: TextStyle(
                                              color: Color(0xFF868889),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
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
                        Row(
                          children: [
                            Switch(
                              activeColor: Colors.white,
                              activeTrackColor: const Color(0xFF6CC51D),
                              hoverColor: const Color(0xFF6CC51D),
                              onChanged: (value) {
                                debugPrint("value ----> $value");
                                setState(() {
                                  switchvalue = value;
                                });
                              },
                              value: switchvalue,
                            ),
                            const Text(
                              "Make default",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 390,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Image.asset(
                              "assets/Transactions_images/visa.png",
                              height: 52,
                              width: 52,
                            ),
                            const SizedBox(width: 10),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Visa Card",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 17,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Text(
                                    "XXXX  XXXX  XXXX  5678",
                                    style: TextStyle(
                                      color: Color(0xFF868889),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Text(
                                    "Expiry : 01/22       CVV : 908",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 70),
                            Image.asset(
                              "assets/images/my card.png",
                              width: 25,
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 390,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Image.asset(
                              "assets/Transactions_images/round.png",
                              height: 52,
                              width: 52,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Master Card",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 17,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Text(
                                    "XXXX  XXXX  XXXX  5678",
                                    style: TextStyle(
                                      color: Color(0xFF868889),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Text(
                                    "Expiry : 01/22       CVV : 908",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 80),
                            Image.asset(
                              "assets/images/my card.png",
                              width: 25,
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyCards(),
                        ),
                      );
                    },
                    child: const StartedContainer(
                      name: "Save settings",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
