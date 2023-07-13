import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';
import 'home_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                AllNames(
                  name: "Verify Number",
                ),
              ],
            ),
            const SizedBox(height: 90),
            const Text(
              "Verify your number",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: "Poppins",
                color: Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Enter your OTP code below",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                color: Color(0xFF868889),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            Container(
              height: 60,
              width: 370,
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StartedContainer(
                  elevated: "Next",
                  width: 360,
                  height: 60,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Did’nt receive the code ?",
              style: TextStyle(
                fontSize: 15,
                // fontWeight: FontWeight.w300,
                fontFamily: "Poppins",
                color: Color(0xFF000000),
              ),
            ),
            const Text(
              "Resend a new code",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
