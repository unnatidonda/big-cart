import 'package:flutter/material.dart';

class AllNames extends StatelessWidget {
  final String? name;
  const AllNames({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
            weight: 23,
          ),
        ),
        const SizedBox(width: 100),
        Text(
          name ?? "",
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Color(0xFF000000),
          ),
        ),
      ],
    );
  }
}
