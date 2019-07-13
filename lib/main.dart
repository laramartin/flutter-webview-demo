import 'package:flutter/material.dart';
import 'package:resources_to_learn_flutter/data/resource_item.dart';

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
        textTheme: Typography.blackMountainView
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Resources to learn"),
          leading: FlutterLogo(),
        ),
        body: ListView(
          children:
              resourceItems.map((item) => ResourceListItem(item)).toList(),
        ),
      ),
    );
  }
}

class ResourceListItem extends StatelessWidget {
  final ResourceItem resourceItem;

  ResourceListItem(this.resourceItem);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(resourceItem.title),

    );
  }
}
