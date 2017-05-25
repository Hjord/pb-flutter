import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'app/home.dart';
import 'app/second.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp(),
      routes: <String, WidgetBuilder>{
        SecondPage.routeName : (BuildContext context) => new SecondPage(title: 'My second page'),
      }));
}