import 'package:flutter/material.dart';
import './chatPage.dart' as chat;
import './cameraPage.dart' as camera ;
import './storyPage.dart' as story;
import './callsPage.dart' as calls;


void main() {
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

    TabController controller; //membuat controller
    
    @override //depedency controller
    void initState() {
      controller = new TabController(vsync: this, length: 4);
      super.initState();
    } //end depedency

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }
  
   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tab Bar Course"),
        backgroundColor: Colors.blue,
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            
              new Tab(icon: new Icon(Icons.camera,),
              text: "Camera",),
              new Tab(icon: new Icon(Icons.chat),
              text: "Chat",),
              new Tab(icon: new Icon(Icons.play_arrow),
              text: "Story",),
              new Tab(icon: new Icon(Icons.call),
              text: "Calls",),
            
          ],
        ),
      ),
      //menambahkan isi keterangan
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new camera.Camera(),
          new chat.Chat(),
          new story.Story(),
          new calls.Calls(),
        ],
      ),
      //menambah tab bar bawah
      bottomNavigationBar: new Material(
        color: Colors.red,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera),),
              new Tab(icon: new Icon(Icons.chat),),
              new Tab(icon: new Icon(Icons.play_arrow),),
              new Tab(icon: new Icon(Icons.call),),
          ],
        )
      ),
    );
  }
}