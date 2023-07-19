import 'package:big_cart/common/all_notification.dart';
import 'package:flutter/material.dart';

import '../common/started_container.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreen();
}

class _NotificationScreen extends State<NotificationScreen> {
  bool switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                BackButton(
                  color: Color(0xFF000000),
                ),
                SizedBox(width: 80),
                Text(
                  "Notifications",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  AllNotification(
                    text: "Allow Notifcations",
                    name: "Lorem ipsum dolor sit amet, consetetur sadi \npscing elitr, sed diam nonumym",
                  ),
                  SizedBox(height: 15),
                  AllNotification(
                    text: "Email Notifcations",
                    name: "Lorem ipsum dolor sit amet, consetetur sadi \npscing elitr, sed diam nonumym",
                  ),
                  SizedBox(height: 15),
                  AllNotification(
                    text: "Order Notifcations",
                    name: "Lorem ipsum dolor sit amet, consetetur sadi \npscing elitr, sed diam nonumym",
                  ),
                  SizedBox(height: 15),
                  AllNotification(
                    text: "General Notifcations",
                    name: "Lorem ipsum dolor sit amet, consetetur sadi \npscing elitr, sed diam nonumym",
                  ),
                ],
              ),
            ),
            Switch(
              activeColor: Colors.white,
              activeTrackColor: const Color(0xFF6CC51D),
              hoverColor: const Color(0xFF6CC51D),
              onChanged: (value) {
                debugPrint("value ----> $value");
                setState(() {
                  switchvalue = value;
                });
              },
              value: switchvalue,
            ),
            const SizedBox(height: 180),
            const StartedContainer(
              width: 380,
              height: 60,
              elevated: "Save Setting",
            ),
          ],
        ),
      ),
    );
  }
}
