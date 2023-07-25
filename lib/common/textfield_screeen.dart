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
        // validator: (value) {
        //   if (!RegExp(r"(?:19|20)\d\d").hasMatch(value!)) {
        //     return "Please enter valid birthdate";
        //   }
        //   return null;
        // },
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
