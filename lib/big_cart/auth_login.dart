import 'package:flutter/material.dart';

import 'auth_signup.dart';

class AuthLogin extends StatefulWidget {
  const AuthLogin({Key? key}) : super(key: key);

  @override
  State<AuthLogin> createState() => _AuthLoginState();
}

class _AuthLoginState extends State<AuthLogin> {
  bool switchvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/auth_login.png",
            height: 488,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12, top: 60),
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
            padding: const EdgeInsets.only(top: 430),
            child: Container(
              height: 490,
              width: 414,
              decoration: const BoxDecoration(
                color: Color(0xFFF4F5F9),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        Text(
                          "Welcome back!",
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
                          "Sign in to your account",
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
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        isDense: true,
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(14),
                          child: Row(
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: Color(0xFF9E9E9E),
                                size: 25,
                              ),
                              SizedBox(width: 30),
                              Text(
                                "Email Address",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF868889),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        isDense: true,
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(14),
                          child: Row(
                            children: [
                              Icon(
                                Icons.lock_outline_rounded,
                                color: Color(0xFF9E9E9E),
                                size: 25,
                              ),
                              Spacer(),
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Color(0xFF9E9E9E),
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Switch(
                        activeColor: Colors.white,
                        activeTrackColor: const Color(0xFFF4F5F9),
                        hoverColor: const Color(0xFF868889),
                        onChanged: (value) {
                          debugPrint("value ----> $value");
                          setState(() {
                            switchvalue = value;
                          });
                        },
                        value: switchvalue,
                      ),
                      const Text(
                        "Remember me",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF868889),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 70),
                      const Text(
                        "Forgot password",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF407EC7),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                                builder: (context) => const AuthSignup(),
                              ),
                            );
                          },
                          child: const Text(
                            "Signup",
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
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: "Don’t have an account ? ",
                        style: TextStyle(
                          color: Color(0xFF868889),
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: " Sign up",
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
    );
  }
}
