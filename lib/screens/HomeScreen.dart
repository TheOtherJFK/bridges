import 'package:flutter/material.dart';
import 'package:miam_bridge_forecast/models/Bridge.dart';
import 'package:miam_bridge_forecast/services/api.dart';
import 'package:miam_bridge_forecast/widgets/BridgeListView.dart';
import 'package:miam_bridge_forecast/widgets/HeaderGreeting.dart';
import 'package:miam_bridge_forecast/widgets/WaitingMessage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Bridges'),
      ),
      body: RefreshIndicator(
          onRefresh: getBridges,
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate([
                  HeaderGreeting(),
                  FutureBuilder(
                      future: getBridges(),
                      builder: (context, AsyncSnapshot<List<Bridge>> snapshot) {
                        if (snapshot.hasData && snapshot.data != null) {
                          return BridgeListView(snapshot: snapshot);
                        } else {
                          return WaitingMessage();
                        }
                      }),
                ]),
              )
            ],
          )),
    );
    ;
  }
}
