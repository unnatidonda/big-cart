import 'package:flutter/material.dart';

import '../big_cart/otp_screen.dart';

class StartedContainer extends StatelessWidget {
  final String? name;
  const StartedContainer({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 370,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFAEDC81),
            Color(0xFF6CC51D),
          ],
        ),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtpScreen(),
            ),
          );
        },
        child: Text(
          name ?? "",
          style: TextStyle(
            fontSize: 17,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
