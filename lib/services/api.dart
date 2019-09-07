import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:miam_bridge_forecast/models/Bridge.dart';

Future<List<Bridge>> getBridges() async {

  final String url = 'https://api.bridgeforecast.com/api/bridges';
  final response = await http.get(url);

  if (response.statusCode == 200) {
    // Convert the JSON response to an array.
    var parsedList = convert.json.decode(response.body);

    // Instantiate an empty list of Bridges
    List<Bridge> bridges = List<Bridge>();

    // Create a Bridge object from each item in the array
    parsedList.forEach((bridge) {
      bridges.add(Bridge.fromJson(bridge));
    });

    // Return the list of Bridges
    return bridges;
  } else {
    // Something didn't go as planned
    return [];
  }
}
