import 'package:big_cart/routes_screen/route_name.dart';
import 'package:big_cart/routes_screen/second_routes.dart';
import 'package:big_cart/routes_screen/third_routes.dart';
import 'package:flutter/material.dart';

import 'first_routes.dart';

class AppRoutes {
  Map<String, Widget Function(BuildContext)> approutes = {
    Routesname.initialRoute: (context) => const FirstRoutes(),
    Routesname.SecondRoutes: (context) => const SecondRoutes(),
    Routesname.ThirdRoutes: (context) => const ThirdRoutes(),
  };
}
