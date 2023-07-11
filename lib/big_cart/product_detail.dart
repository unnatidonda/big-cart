import 'package:flutter/material.dart';

import '../common/started_container.dart';
import 'cart_screen.dart';
import 'reviews_screen.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/productImage.png",
                    width: double.infinity,
                    height: 500,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: BackButton(
                      color: const Color(0xFF000000),
                      style: ButtonStyle(
                        iconSize: MaterialStateProperty.all(30),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 390,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFF4F5F9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            textAlign: TextAlign.start,
                            "\$2.22",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xFF28B446),
                              fontFamily: "Poppins",
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_rounded),
                            color: const Color(0xFF868889),
                          )
                        ],
                      ),
                      const Text(
                        textAlign: TextAlign.start,
                        "Organic Lemons",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Color(0xFF000000),
                          fontFamily: "Poppins",
                        ),
                      ),
                      const Text(
                        textAlign: TextAlign.start,
                        "1.50 lbs",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xFF868889),
                          fontFamily: "Poppins",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ReviewsScreen(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/rating.png",
                              width: 105,
                              height: 90,
                            ),
                            const Text(
                              textAlign: TextAlign.start,
                              "(89 reviews)",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color(0xFF868889),
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        textAlign: TextAlign.start,
                        "Organic Mountain works as a seller for many organic growers\n of organic lemons. Organic lemons are easy to spot in your\n produce aisle. They are just like regular lemons, but they will \nusually have a few more scars on the outside of the lemon \nskin. Organic lemons are considered to be the world's finest \nlemon for juicing",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF868889),
                          fontFamily: "Poppins",
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartScreen(),
                            ),
                          );
                        },
                        child: const StartedContainer(
                          name: "Add to cart",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
