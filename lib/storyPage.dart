import 'package:flutter/material.dart';

class Story extends StatelessWidget {
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
              "Story",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Icon(Icons.play_arrow, size: 90.0),
            new Image.network("https://bin.snmmd.nl/m/ps3ypu6uih0m.png/story.png", width: 200.0)
          ],
        ),
      ),
    );
  }
}
