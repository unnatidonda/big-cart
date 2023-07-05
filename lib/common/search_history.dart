import 'package:flutter/material.dart';

class Search_History extends StatelessWidget {
  final String? name;
  const Search_History({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 75,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Text(
          textAlign: TextAlign.center,
          name ?? "",
          style: const TextStyle(
            color: Color(0xFF868889),
            fontFamily: "Poppins",
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
