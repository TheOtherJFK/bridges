import 'package:flutter/material.dart';

class Helpers {
  String getGreeting() {
    int hourNow = DateTime.now().hour;
    if (hourNow <= 12) {
      return "Good Morning";
    } else if (hourNow > 12 && hourNow < 18) {
      return "Good Afternoon";
    } else if (hourNow >= 18) {
      return "Good Evening";
    }

    return "Hello";
  }

  String getStatusText(int status) {
    String label;

    switch (status) {
      case 0:
        label = 'DOWN';
        break;
      case 1:
        label = 'UP';
        break;
      default:
        label = '--';
        break;
    }

    return label;
  }

  Color getStatusColor(int status) {
    Color color;

    switch (status) {
      case 0:
        color = Colors.green;
        break;
      case 1:
        color = Colors.red;
        break;
      default:
        color = Colors.grey;
        break;
    }

    return color;
  }
}
