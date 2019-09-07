// Framework
import 'package:flutter/material.dart';

// Helpers
import 'package:miam_bridge_forecast/services/helpers.dart';


class HeaderGreeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
//                    height: 100,
      child: Column(
        children: <Widget>[
          Text(
            Helpers().getGreeting(),
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            'Enjoy your commute.',
            style: Theme.of(context).textTheme.body1,
          )
        ],
      ),
    );
  }
}
