import 'package:flutter/material.dart';

import 'auth_login.dart';

class AuthWelcome extends StatefulWidget {
  const AuthWelcome({Key? key}) : super(key: key);

  @override
  State<AuthWelcome> createState() => _AuthWelcomeState();
}

class _AuthWelcomeState extends State<AuthWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/auth_welcome.png",
                height: 638.21,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 70),
                child: Row(
                  children: [
                    BackButton(
                      style: ButtonStyle(
                        iconSize: MaterialStatePropertyAll(25),
                      ),
                      color: Color(0xFFFFFFFF),
                    ),
                    SizedBox(width: 120),
                    Text(
                      textAlign: TextAlign.center,
                      "Welcome",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500),
                child: Container(
                  height: 325,
                  width: 414,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF4F5F9),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF868889),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 60,
                        width: 360,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 28),
                            Image.asset(
                              "assets/images/google.png",
                              height: 22,
                              width: 22,
                            ),
                            const SizedBox(width: 60),
                            const Text(
                              "Continue with google",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AuthLogin(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/account.png",
                                      height: 26,
                                      width: 26,
                                    ),
                                    const SizedBox(width: 60),
                                    const Text(
                                      "Create an account",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(
                              color: Color(0xFF868889),
                              fontSize: 18,
                            ),
                            children: [
                              TextSpan(
                                text: " Login",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
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
