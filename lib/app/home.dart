// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import 'myDrawer.dart';
import 'second.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //if (defaultTargetPlatform == TargetPlatform.iOS) {
    // print("I'm on iOS only");
    //}
    //else {
    // print("I'm elsewhere");
    // }

    ListTile buildListItem(String text, int key) {
      return new ListTile(
          title: new Text(text),
          subtitle: new Text(text),
          isThreeLine: true,
          onTap: () {
            switch (key) {
              case 1:
                Navigator.pushNamed(context, SecondPage.routeName);
                break;
              case 2:
                break;
            }
          }
      );
    }


    return new MaterialApp(
        title: 'Flutter Demo!',
        home: new Scaffold(
            drawer: new myDrawer(),
            appBar: new AppBar(
              title: new Text('Home page'),

            ),
            body: new ListView(
              children: [
                buildListItem('Item one', 1),
                buildListItem('Item two', 2)
              ],
            )
        )
    );
  }
}