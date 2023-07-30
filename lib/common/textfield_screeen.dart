import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  final String? image;
  final String? hintText;
  final IconData? icon;
  const TextFieldScreen({Key? key, this.image, this.hintText, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          isDense: true,
          hintText: "",
          hintStyle: const TextStyle(
            color: Color(0xFF9E9E9E),
            fontWeight: FontWeight.w500,
            fontSize: 15,
            fontFamily: "Poppins",
          ),
          border: InputBorder.none,
          filled: true,
          fillColor: const Color(0xFFFFFFFF),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                Image.asset(
                  image ?? "",
                  height: 26,
                  width: 26,
                ),
                // if (icon != null)
                //   Icon(
                //     icon!,
                //     color: Color(0xFF868889),
                //     size: 25,
                //   ),
                const SizedBox(width: 20),
                Text(
                  hintText ?? "",
                  style: const TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    fontFamily: "Poppins",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 20),
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
                              Icons.account_circle_outlined,
                              color: Color(0xFF9E9E9E),
                              size: 25,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Name on the card",
                              style: TextStyle(
                                color: Color(0xFF9E9E9E),
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      isDense: true,
                      border: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/Credit _Card.png",
                              height: 20,
                              width: 30,
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Card number",
                              style: TextStyle(
                                color: Color(0xFF9E9E9E),
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(20),
                            isDense: true,
                            border: InputBorder.none,
                            filled: true,
                            fillColor: const Color(0xFFFFFFFF),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(14),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/calendar.png",
                                    height: 26,
                                    width: 26,
                                  ),
                                  const SizedBox(width: 20),
                                  const Text(
                                    "Month / Year",
                                    style: TextStyle(
                                      color: Color(0xFF9E9E9E),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
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
                                    Icons.lock_outline_rounded,
                                    color: Color(0xFF9E9E9E),
                                    size: 25,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "CVV",
                                    style: TextStyle(
                                      color: Color(0xFF9E9E9E),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
