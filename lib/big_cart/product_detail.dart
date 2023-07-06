import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    "\$2.22",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF28B446),
                      fontFamily: "Poppins",
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "Organic Lemons",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Color(0xFF000000),
                      fontFamily: "Poppins",
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "1.50 lbs",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xFF868889),
                      fontFamily: "Poppins",
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "4.5 (89 reviews)",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xFF868889),
                      fontFamily: "Poppins",
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "Organic Mountain works as a seller for many organic growers\n of organic lemons. Organic lemons are easy to spot in your\n produce aisle. They are just like regular lemons, but they will \nusually have a few more scars on the outside of the lemon \nskin. Organic lemons are considered to be the world's finest \nlemon for juicing",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF868889),
                      fontFamily: "Poppins",
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
