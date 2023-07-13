import 'package:flutter/material.dart';

import '../common/started_container.dart';
import 'otp_screen.dart';

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                BackButton(
                  style: ButtonStyle(
                    iconSize: MaterialStatePropertyAll(25),
                  ),
                  color: Color(0xFF000000),
                ),
                SizedBox(
                  width: 95,
                ),
                Text(
                  "Verify number",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            const Text(
              "Verify your number",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF868889),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: 370,
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/flag.png", height: 17, width: 26),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "+1",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                    color: Color(0xFF868889),
                  ),
                  const Divider(),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    "2055550145",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: StartedContainer(
                    elevated: "Next",
                    height: 60,
                    width: 360,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Resend confirmation code (1:23)",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
