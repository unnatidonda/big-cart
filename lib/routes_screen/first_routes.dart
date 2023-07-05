import 'package:flutter/material.dart';

import 'route_name.dart';

class FirstRoutes extends StatefulWidget {
  const FirstRoutes({super.key});

  @override
  State<FirstRoutes> createState() => _FirstRoutesState();
}

class _FirstRoutesState extends State<FirstRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routesname.SecondRoutes);
              },
              child: Container(
                height: 80,
                width: 250,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
