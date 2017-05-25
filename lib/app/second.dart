import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'myDrawer.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key, this.title}) : super(key: key);

  static const String routeName = "/SecondPage";

  final String title;

  @override
  _SecondPageState createState() => new _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {


  int _counter = 0;


  @override
  Widget build(BuildContext context) {

    if(defaultTargetPlatform == TargetPlatform.android){

    }


    return new Scaffold(
      drawer: new myDrawer(),
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
          child: new Center(child: new Text('Counter: $_counter'))),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        tooltip: 'Add',
        child: new Icon(Icons.add),
      ),
    );
  }

  void _onFloatingActionButtonPressed() {
    setState(() {
      _counter++;
    });
  }
}