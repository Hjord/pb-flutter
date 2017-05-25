import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class myDrawer extends StatelessWidget {


  static const platform = const MethodChannel('hjord.net/toast');


  Future<Null> _androidToast() async {
    try {
      platform.invokeMethod('SuperToast');
     // platform.invokeMethod('ShowThatToast');
    }
    catch (e) {
      print('Whoooops');
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    Drawer drawer = new Drawer(child: new ListView(children: <Widget>[
      new DrawerHeader(child: new Text('This is the drawer header')),
      new ListTile(title: new Text("Tile 1"),
          leading: new Icon(Icons.android),
          onTap: defaultTargetPlatform == TargetPlatform.android
              ? _androidToast
              : null),
    ]));


    return drawer;
  }
}




