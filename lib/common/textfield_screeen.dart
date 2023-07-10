import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  final String? name;
  final String? image;
  const TextFieldScreen({Key? key, this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          isDense: true,
          border: InputBorder.none,
          filled: true,
          fillColor: const Color(0xFFFFFFFF),
          suffixIcon: Padding(
            padding: EdgeInsets.all(14),
            child: Row(
              children: [
                Image.asset(
                  image ?? "",
                  height: 26,
                  width: 26,
                ),
                const SizedBox(width: 20),
                Text(
                  name ?? "",
                  style: const TextStyle(
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
    );
  }
}
