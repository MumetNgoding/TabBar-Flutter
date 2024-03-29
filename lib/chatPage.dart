import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Text(
              "Chat",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Icon(Icons.chat, size: 90.0),
            new Image.asset("img/chat.png"), //add image on local storage
          ],
        ),
      ),
    );
  }
}
