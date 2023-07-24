import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  final String? image;
  final Color? color;
  final String? name;

  const Favorite({super.key, this.image, this.color, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    top: 20,
                    child: Image.asset(
                      image ?? "",
                      height: 56,
                      width: 55,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 5),
                    child: Row(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "\$2.22 x 4",
                          style: TextStyle(
                            color: Color(0xFF6CC51D),
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 225),
                        Text(
                          "+",
                          style: TextStyle(
                            color: Color(0xFF6CC51D),
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          name ?? "",
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 170),
                        Text(
                          "5",
                          style: TextStyle(
                            color: Color(0xFF868889),
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "1.50 lbs",
                          style: TextStyle(
                            color: Color(0xFF868889),
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 230),
                        Text(
                          "-",
                          style: TextStyle(
                            color: Color(0xFF6CC51D),
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
