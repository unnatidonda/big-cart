import 'package:flutter/material.dart';

import '../common/started_container.dart';
import '../common/textfield_screeen.dart';
import 'Verify_Number.dart';

class AuthSignup extends StatefulWidget {
  const AuthSignup({Key? key}) : super(key: key);

  @override
  State<AuthSignup> createState() => _AuthSignupState();
}

class _AuthSignupState extends State<AuthSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/auth_signup.png",
                height: 435,
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
                        padding: EdgeInsets.only(top: 12, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Create account",
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
                              "Quickly create account",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF868889),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      const TextFieldScreen(
                        hintText: "Email Address",
                        image: "assets/images/email.png",
                      ),
                      const SizedBox(height: 8),
                      const TextFieldScreen(
                        hintText: "phone number",
                        image: "assets/images/telephone.png",
                      ),
                      const SizedBox(height: 8),
                      const TextFieldScreen(
                        image: "assets/images/lock.png",
                      ),
                      const SizedBox(height: 15),
                      StartedContainer(
                        height: 60,
                        width: 360,
                        elevated: "Signup",
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VerifyNumber(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 15),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: "Already have an account ?  ",
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
