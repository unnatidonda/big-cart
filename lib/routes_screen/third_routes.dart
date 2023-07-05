import 'package:flutter/material.dart';

import 'route_name.dart';

class ThirdRoutes extends StatefulWidget {
  const ThirdRoutes({super.key});

  @override
  State<ThirdRoutes> createState() => _ThirdRoutesState();
}

class _ThirdRoutesState extends State<ThirdRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routesname.initialRoute);
              },
              child: Container(
                height: 80,
                width: 250,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
