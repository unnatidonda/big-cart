import 'package:flutter/material.dart';

class ShoppingMethod extends StatefulWidget {
  const ShoppingMethod({Key? key}) : super(key: key);

  @override
  State<ShoppingMethod> createState() => _ShoppingMethodState();
}

class _ShoppingMethodState extends State<ShoppingMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 118,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 50, left: 18),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    size: 28,
                    color: Color(0xFF000000),
                  ),
                  SizedBox(width: 80),
                  Text(
                    "Shipping Method",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFF6CC51D),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Divider(
                  thickness: 3,
                  color: Color(0xFF6CC51D),
                  indent: 20,
                ),
              ),
              const Expanded(
                child: Divider(
                  thickness: 2,
                  color: Color(0xFFCCCCCC),
                  endIndent: 20,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFF6CC51D),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Divider(
                  thickness: 3,
                  color: Color(0xFF6CC51D),
                  indent: 50,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 15),
              Container(
                height: 116,
                width: 360,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            "Standard Delivery",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "Order will be delivered between 3 - 4 business\ndays straights to your doorstep.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF868889),
                          ),
                        ),
                        SizedBox(width: 60),
                        Text(
                          "\$ 3",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF6CC51D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 15),
              Container(
                height: 116,
                width: 360,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            "Next Day Delivery",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "Order will be delivered between 3 - 4 business\ndays straights to your doorstep.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF868889),
                          ),
                        ),
                        SizedBox(width: 60),
                        Text(
                          "\$ 3",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF6CC51D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 15),
              Container(
                height: 116,
                width: 360,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            "Nominated Delivery",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "Order will be delivered between 3 - 4 business\ndays straights to your doorstep.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF868889),
                          ),
                        ),
                        SizedBox(width: 60),
                        Text(
                          "\$ 3",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF6CC51D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 130),
          Container(
            height: 60,
            width: 360,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFAEDC81),
                  Color(0xFF6CC51D),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w500,
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
