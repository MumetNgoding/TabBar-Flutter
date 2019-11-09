import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
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
              "Calls",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Icon(Icons.call, size: 90.0),
            new Image.network("https://assets.pcmag.com/media/images/654566-robocall-generic.jpg?thumb=y&width=412&height=412&boxFit=y", width: 200.0, height: 200.0,)
          ],
        ),
      ),
    );
  }
}
