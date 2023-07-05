import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading:
            Image.asset("assets/images/Vector2.png", width: 13, height: 16),
        title: const Text(
          "Notifications",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xFF000000)),
        ),
      ),
      backgroundColor: const Color(0xFFF4F5F9),
    );
  }
}
