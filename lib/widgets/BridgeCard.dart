// Framework
import 'package:flutter/material.dart';

// Models
import 'package:miam_bridge_forecast/models/Bridge.dart';

// Helpers
import 'package:miam_bridge_forecast/services/helpers.dart';

Widget bridgeCard(BuildContext context, Bridge bridge) {
  return Card(
    elevation: 2,
    child: ClipPath(
      child: Container(
        height: 100,
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  bridge.name,
                  style: Theme.of(context).textTheme.title,
                ),
                Text('WENT UP ' + bridge.lastUpdate.toUpperCase(),
                    style: Theme.of(context).textTheme.caption)
              ],
            ),
            Chip(
              labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              label: Text(
                Helpers().getStatusText(bridge.opened),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
//            Text(
//              Helpers().getStatusText(bridge.opened),
//              style: Theme.of(context).textTheme.title,
//            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(
                    color: Helpers().getStatusColor(bridge.opened),
                    width: 10))),
      ),
      clipper: ShapeBorderClipper(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
    ),
  );
}
