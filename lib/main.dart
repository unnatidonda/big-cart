import 'package:flutter/material.dart';

import 'routes_screen/app_route.dart';
import 'routes_screen/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routesname.initialRoute,
      routes: AppRoutes().approutes,
      // home: const Welcome(),
    );
  }
}
