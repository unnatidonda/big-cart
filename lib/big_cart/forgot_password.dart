import 'package:flutter/material.dart';

import '../common/started_container.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                SizedBox(
                  width: 65,
                ),
                Text(
                  "Password Recovery",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Text(
              "Forgot Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF868889),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
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
                            fontSize: 15,
                            color: Color(0xFF868889),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StartedContainer(
                  name: "Send link",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
