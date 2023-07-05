import 'package:flutter/material.dart';

import 'route_name.dart';

class SecondRoutes extends StatefulWidget {
  const SecondRoutes({super.key});

  @override
  State<SecondRoutes> createState() => _SecondRoutesState();
}

class _SecondRoutesState extends State<SecondRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routesname.ThirdRoutes);
              },
              child: Container(
                height: 80,
                width: 250,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
