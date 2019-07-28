import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Navigation between Screens",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: new Column(
        children: <Widget>[
          new TextField(
              controller: _textController,
              decoration: new InputDecoration(labelText: 'Enter Your Name')),
          new RaisedButton(
            child: new Text('Submit'),
            onPressed: () {
              var router = new MaterialPageRoute(
                  builder: (BuildContext context) => SecondScreen("${_textController.text}"));
              Navigator.of(context).push(router);
            },
          )
        ],
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {

  final String name;

  SecondScreen(this.name);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Navigation"),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
      body: new Container(
        child: new Text("Your name is ${widget.name}")
      ),
    );
  }
}
