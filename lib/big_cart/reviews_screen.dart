import 'package:flutter/material.dart';

import '../common/all_names.dart';
import 'write_review_screen.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  Map mapdata = {
    "text": "",
  };

  List<Map<String, dynamic>> colortextList = [
    {
      "color": Colors.white,
      "text": "Haylie Aminoff",
      "image": "assets/images/Haylie Aminoff.png",
    },
    {
      "color": Colors.white,
      "text": "Carla Septimus",
      "image": "assets/images/Carla Septimus.png",
    },
    {
      "color": Colors.white,
      "text": "Carla George",
      "image": "assets/images/Carla George.png",
    },
    {
      "color": Colors.white,
      "text": "Maren Kenter",
      "image": "assets/images/Maren Kenter.png",
    },
  ];
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
                  name: "Reviews",
                ),
                const SizedBox(width: 140),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WriteReviewScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.add_circle_outline,
                    size: 25,
                    color: Color(0xFF000000),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Container(
                    width: 380,
                    height: 169,
                    color: colortextList[index]["color"],
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                colortextList[index]["image"],
                                width: 50,
                                height: 50,
                              ),
                              const SizedBox(width: 15),
                              Text(
                                colortextList[index]["text"],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 13),
                          const Divider(
                            height: 2,
                            color: Color(0xFFEBEBEB),
                            thickness: 2,
                          ),
                          const SizedBox(height: 10),
                          Image.asset(
                            "assets/images/rating.png",
                            height: 20,
                            width: 110,
                          ),
                          const Text(
                            "Lorem ipsum dolor sit amet, consetetur sadi sspscing elitr, sed diam nonumy",
                            style: TextStyle(
                              color: Color(0xFF868889),
                              fontSize: 13,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
