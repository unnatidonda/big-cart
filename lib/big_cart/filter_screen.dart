import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                AllNames(
                  name: "Apply Filters",
                ),
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(
                //     Icons.arrow_back,
                //     color: Colors.black,
                //     size: 30,
                //     weight: 23,
                //   ),
                // ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 449,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Price Range",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Poppins",
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          Container(
                            height: 45,
                            width: 155,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF4F5F9),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  textAlign: TextAlign.start,
                                  "Min.",
                                  style: TextStyle(
                                    color: Color(0xFF868889),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 45,
                            width: 155,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF4F5F9),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  textAlign: TextAlign.start,
                                  "Max.",
                                  style: TextStyle(
                                    color: Color(0xFF868889),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Divider(
                        height: 1,
                        color: Color(0xFFEBEBEB),
                        thickness: 1,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Star Rating",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Poppins",
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 45,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF4F5F9),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Image.asset(
                              "assets/images/star.png",
                              height: 15,
                              width: 95,
                            ),
                            const SizedBox(width: 150),
                            const Text(
                              "4 stars",
                              style: TextStyle(
                                color: Color(0xFF868889),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Divider(
                        height: 1,
                        color: Color(0xFFEBEBEB),
                        thickness: 1,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Others",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Poppins",
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/discount.png",
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "Discount",
                            style: TextStyle(
                              color: Color(0xFF868889),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/images/check-mark 1.png",
                            width: 18,
                            height: 18,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Divider(
                        height: 1,
                        color: Color(0xFFEBEBEB),
                        thickness: 1,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/free.png",
                            width: 22,
                            height: 22,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "Free shipping",
                            style: TextStyle(
                              color: Color(0xFF868889),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/images/check-mark 2.png",
                            width: 18,
                            height: 18,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Divider(
                        height: 1,
                        color: Color(0xFFEBEBEB),
                        thickness: 1,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/same.png",
                            width: 20,
                            height: 18,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "Same day delivery",
                            style: TextStyle(
                              color: Color(0xFF868889),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/images/check-mark 2.png",
                            width: 18,
                            height: 18,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Divider(
                        height: 1,
                        color: Color(0xFFEBEBEB),
                        thickness: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 170),
            const Row(
              children: [
                SizedBox(width: 12),
                StartedContainer(
                  name: "Apply filter",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
