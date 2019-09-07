import 'package:miam_bridge_forecast/routers/constants.dart';
import 'package:flutter/material.dart';

Widget navDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Bridges', style: TextStyle(fontSize: 25)),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              )
            ],
          ),
        ),
        ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.pushNamed(
                context,
                NotificationsViewRoute,
              );
            }),
        ListTile(
            leading: Icon(Icons.settings),
            title: Text('Preferences', style: TextStyle(fontSize: 20)),
            onTap: () {}),
        Divider(),
        ListTile(
            leading: Icon(Icons.lightbulb_outline),
            title: Text('Feedback & Ideas', style: TextStyle(fontSize: 20)),
            onTap: () {}),
        ListTile(
            leading: Icon(Icons.help),
            title: Text('Help', style: TextStyle(fontSize: 20)),
            onTap: () {}),
      ],
    ),
  );
}
