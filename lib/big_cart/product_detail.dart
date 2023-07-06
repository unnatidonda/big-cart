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
            decoration: BoxDecoration(
              color: Color(0xFFF4F5F9),
            ),
            child: Column(
              children: [
                Text(
                  "\$2.22",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
