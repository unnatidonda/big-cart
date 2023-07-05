import 'package:flutter/material.dart';

import '../common/all_names.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
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
                  AllNames(
                    name: "about me",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 35),
          const Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Personal Details",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 60,
            width: 360,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                Image.asset(
                  "assets/images/account.png",
                  height: 26,
                  width: 26,
                  color: const Color(0xFF969696),
                ),
                const SizedBox(width: 30),
                const Text(
                  "Russell Austin",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF868889),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 60,
            width: 360,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                Image.asset(
                  "assets/images/email.png",
                  height: 22.52,
                  width: 24,
                ),
                const SizedBox(width: 30),
                const Text(
                  "russell.partner@gmail.com",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF868889),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 60,
            width: 360,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                Image.asset(
                  "assets/images/telephone 1.png",
                  height: 23,
                  width: 24,
                ),
                const SizedBox(width: 30),
                const Text(
                  "+1  202  555  0142 ",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF868889),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Change Password",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 60,
            width: 360,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                Image.asset(
                  "assets/images/lock.png",
                  height: 24,
                  width: 23,
                ),
                const SizedBox(width: 30),
                const Text(
                  "Current password",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF868889),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 60,
            width: 360,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                Image.asset(
                  "assets/images/lock.png",
                  height: 24,
                  width: 23,
                ),
                Image.asset(
                  "assets/images/second_password.png",
                  height: 8.79,
                  width: 127,
                ),
                const SizedBox(width: 140),
                Image.asset(
                  "assets/images/show.png",
                  height: 16.88,
                  width: 26.48,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 60,
            width: 360,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                Image.asset(
                  "assets/images/lock.png",
                  height: 24,
                  width: 23,
                ),
                const SizedBox(width: 30),
                const Text(
                  "Confirm password",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF868889),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
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
                  "Save settings",
                  style: TextStyle(
                    fontSize: 17,
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
