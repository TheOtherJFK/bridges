// Framework
import 'package:flutter/material.dart';

// Models
import 'package:miam_bridge_forecast/models/Bridge.dart';
import 'package:miam_bridge_forecast/widgets/BridgeCard.dart';

class BridgeListView extends StatelessWidget {

  final AsyncSnapshot snapshot;

  const BridgeListView({Key key, this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height /2,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(top: 10),
        itemCount: snapshot.data.length,
        itemBuilder: (_, index) {
          Bridge bridge = snapshot.data[index];
          return bridgeCard(context, bridge);
        },
      ),
    );
  }
}
