import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/started_container.dart';
import '../common/textfield_screeen.dart';
import 'payment_method.dart';

class ShoppingInformation extends StatefulWidget {
  const ShoppingInformation({super.key});

  @override
  State<ShoppingInformation> createState() => _ShoppingInformationState();
}

class _ShoppingInformationState extends State<ShoppingInformation> {
  bool switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: SafeArea(
        child: Column(
          children: [
            const AllNames(
              name: "Shipping Address",
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 50),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6CC51D),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/done.png",
                      width: 12,
                      height: 16,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/line.png",
                  width: 86,
                  height: 2,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6CC51D),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/line.png",
                  width: 86,
                  height: 2,
                  color: const Color(0xFFE8E9E9),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Color(0xFF868889),
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const TextFieldScreen(
              name: "name",
              image: "assets/images/person.png",
            ),
            const SizedBox(height: 20),
            const TextFieldScreen(
              name: "Email address",
              image: "assets/images/email.png",
            ),
            const SizedBox(height: 20),
            const TextFieldScreen(
              name: "Phone number",
              image: "assets/images/telephone.png",
            ),
            const SizedBox(height: 20),
            const TextFieldScreen(
              name: "Address",
              image: "assets/images/address.png",
            ),
            const SizedBox(height: 20),
            const TextFieldScreen(
              name: "Zip code",
              image: "assets/images/zip_code.png",
            ),
            const SizedBox(height: 20),
            const TextFieldScreen(
              name: "City",
              image: "assets/images/city.png",
            ),
            const SizedBox(height: 20),
            const TextFieldScreen(
              name: "Country",
              image: "assets/images/country.png",
            ),
            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Switch(
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
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentMethod(),
                  ),
                );
              },
              child: StartedContainer(
                name: "Next",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
