import 'package:flutter/material.dart';

class Komputer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.speaker),
              title: new Text("Speaker 1"),
            )
          ],
       )
    //   child: new Center(
    //     child: new Column(
    //       children: <Widget>[
    //         new Padding(padding: new EdgeInsets.all(20.0)),
    //         new Text("Komputer", style: new TextStyle(fontSize: 30.0),),
    //         new Padding(padding: new EdgeInsets.all(20.0)),
    //         new Image.asset("img/komputer.jpeg", width: 200.0, )
    //       ],
    //     ),
    //   ),
     );
  }
}