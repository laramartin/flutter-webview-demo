import 'package:flutter/material.dart';
import 'package:resources_to_learn_flutter/data/resource_item.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  final ResourceItem resourceItem;

  WebViewScreen({this.resourceItem}) : assert(resourceItem != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(resourceItem.title),
      ),
      body: Container(
        child: WebView(
          initialUrl: resourceItem.url,
        ),
      ),
    );
  }
}
