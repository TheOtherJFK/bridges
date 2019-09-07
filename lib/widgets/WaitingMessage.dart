// Framework
import 'package:flutter/material.dart';

class WaitingMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 4),
      child: Column(
        children: <Widget>[
          CircularProgressIndicator(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          Text(
            'Just a second',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
