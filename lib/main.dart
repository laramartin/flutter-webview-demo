import 'package:flutter/material.dart';
import 'package:resources_to_learn_flutter/data/resource_item.dart';

import 'package:resources_to_learn_flutter/presentation/resource_list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final resourceItems = resourcesList;

    return MaterialApp(
      title: 'Resources to learn Flutter',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Color(0xffef9a9a),
        primaryColor: Color(0xffffcdd2),
        accentColor: Colors.pink[100],
        textTheme: Typography.blackMountainView,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Resources to learn"),
          leading: FlutterLogo(),
        ),
        body: Container(
          color: Color(0xffffebee),
          child: ListView(
            children:
                resourceItems.map((item) => ResourceListItem(item)).toList(),
          ),
        ),
      ),
    );
  }
}
