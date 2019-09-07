// Framework
import 'package:flutter/material.dart';

// Router
import 'package:miam_bridge_forecast/routers/router.dart' as router;
import 'package:miam_bridge_forecast/routers/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: HomeViewRoute,
      title: 'Miami Bridges',
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.indigo,
          textTheme: TextTheme(title: TextStyle(fontSize: 30))),
    );
  }
}
