import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/home.png",
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 160, left: 50),
                    child: Text(
                      "20% off on your\nfirst purchase",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xFF000000),
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF000000),
                    fontFamily: "Poppins",
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
