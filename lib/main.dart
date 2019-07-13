import 'package:flutter/material.dart';
import 'package:resources_to_learn_flutter/data/resource_item.dart';
import 'package:resources_to_learn_flutter/webview_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

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

class ResourceListItem extends StatelessWidget {
  final ResourceItem resourceItem;

  ResourceListItem(this.resourceItem);

  @override
  Widget build(BuildContext context) {
    print("Item ${resourceItem.title}, url: ${resourceItem.url}");
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 0),
      child: Column(
        children: <Widget>[
          Card(
            child: ResourceCardContent(resourceItem),
            elevation: 8,
            color: Color(0xffe0f7fa),
          ),
        ],
      ),
    );
  }
}

class ResourceCardContent extends StatelessWidget {
  ResourceCardContent(this.item);

  final ResourceItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            item.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebViewScreen(resourceItem: item)),
          ),
          child: Container(
            height: 200.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: WebView(
                initialUrl: item.url,
                javascriptMode: JavascriptMode.unrestricted,
                onPageFinished: (url) => print("finished loading: $url"),
              ),
            ),
          ),
        )
      ],
    );
  }
}
