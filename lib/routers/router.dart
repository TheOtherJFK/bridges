import 'package:flutter/material.dart';
import 'package:miam_bridge_forecast/routers/constants.dart';
import 'package:miam_bridge_forecast/screens/HomeScreen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeScreen());

    default:
      return MaterialPageRoute(builder: (context) => HomeScreen());
  }
}
