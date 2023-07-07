import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String? image;
  final Color? color;
  final String? name;

  const Home({super.key, this.image, this.color, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 62,
          width: 62,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              image ?? "",
              width: 26,
              height: 26,
            ),
          ),
        ),
        Text(
          name ?? "",
          style: TextStyle(
            color: Color(0xFF868889),
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
