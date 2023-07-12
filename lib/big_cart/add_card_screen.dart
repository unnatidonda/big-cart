import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  bool switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                const AllNames(
                  name: "Add Credit Card",
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
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 20),
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
                              Icons.account_circle_outlined,
                              color: Color(0xFF9E9E9E),
                              size: 25,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Name on the card",
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
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
                              "assets/images/Credit _Card.png",
                              height: 20,
                              width: 30,
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Card number",
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
                Row(
                  children: [
                    const SizedBox(width: 15),
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
                      "Save this card",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 220),
                  child: StartedContainer(
                    name: "Add credit card",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
