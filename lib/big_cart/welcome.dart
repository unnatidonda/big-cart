import 'package:flutter/material.dart';

import 'default_splash_two.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                "assets/images/markus.png",
                height: 890,
                width: 415,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    const Text(
                      "Welcome to",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      "assets/images/bigCart .png",
                      width: 127,
                      height: 50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consetetur \n    sadipscing elitr, sed diam nonumy",
                      style: TextStyle(color: Color(0xFF868889), fontSize: 17),
                    ),
                    const SizedBox(
                      height: 500,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 100, right: 15),
                      child: Row(
                        children: [
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
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const DefaultSplashTwo(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Get Started",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
