import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final String? text;
  final String? image;
  final String? price;
  final String? textSpan;
  const Transaction({Key? key, this.text, this.image, this.price, this.textSpan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 365,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Row(
            children: [
              const SizedBox(width: 15),
              Image.asset(
                image ?? "",
                height: 52,
                width: 52,
              ),
              const SizedBox(width: 20),
              RichText(
                text: const TextSpan(
                  text: "Master Card",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 15,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "\nDec 12 2021 at 10:00 pm",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 90),
              Text(
                price ?? "",
                style: TextStyle(
                  color: Color(0xFF28B446),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
