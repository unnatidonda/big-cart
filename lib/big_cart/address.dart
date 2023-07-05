import 'package:flutter/material.dart';

import '../common/started_container.dart';
import '../common/textfield_screeen.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool switchvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const Row(
                  children: [
                    BackButton(
                      color: Color(0xFF000000),
                    ),
                    SizedBox(width: 80),
                    Text(
                      "Add Address",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Column(
                  children: [
                    TextFieldScreen(
                      name: "Name",
                      // icon: Icons.account_circle_outlined
                    ),
                    SizedBox(height: 10),
                    TextFieldScreen(
                      name: "Email address",
                      // icon: Icons.account_circle_outlined
                    ),
                    SizedBox(height: 10),
                    TextFieldScreen(
                      name: "Phone number",
                      // icon: Icons.account_circle_outlined
                    ),
                    SizedBox(height: 10),
                    TextFieldScreen(
                      name: "Address",
                      // icon: Icons.account_circle_outlined
                    ),
                    SizedBox(height: 10),
                    TextFieldScreen(
                      name: "Zip code",
                      // icon: Icons.account_circle_outlined
                    ),
                    SizedBox(height: 10),
                    TextFieldScreen(
                      name: "City",
                      // icon: Icons.account_circle_outlined
                    ),
                    SizedBox(height: 10),
                    TextFieldScreen(
                      name: "Country",
                      // icon: Icons.account_circle_outlined
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 15),
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
                    const Text(
                      "Save this address",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                const StartedContainer(
                  name: "Add address",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
