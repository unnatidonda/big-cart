import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({super.key});

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  // get textarea => 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: SafeArea(
        child: Column(
          children: [
            const AllNames(
              name: "Write Reviews",
            ),
            const SizedBox(height: 50),
            const Text(
              "What do you think ?",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: "Poppins",
                fontSize: 21,
                color: Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              textAlign: TextAlign.center,
              "please give your rating by clicking on\nthe stars below",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                fontSize: 15,
                color: Color(0xFF868889),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/images/starReview.png",
              width: 222,
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Tell us about your experience",
                  counterStyle: TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    fontFamily: "Poppins",
                  ),
                  contentPadding: EdgeInsets.all(20),
                  isDense: true,
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(14),
                  ),
                ),
              ),
            ),
            const StartedContainer(
              width: 380,
              height: 60,
              elevated: "Start shopping",
            ),
          ],
        ),
      ),
    );
  }
}
