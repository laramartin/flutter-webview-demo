import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:resources_to_learn_flutter/data/resource_item.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  final ResourceItem resourceItem;
  WebViewController _controller;

  WebViewScreen({this.resourceItem}) : assert(resourceItem != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(resourceItem.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async {
              await _controller.reload();
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () async {
              if (await _controller.canGoBack()) {
                print(Text("can go back!"));
                _controller.goBack();
              } else {
                print(Text("cannot go back"));
                // TODO: disable button
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () async {
              if (await _controller.canGoForward()) {
                _controller.goForward();
              } else {
                // TODO: disable button
              }
            },
          )
        ],
      ),
      body: Container(
        child: WebView(
          initialUrl: resourceItem.url,
          onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
          },
          gestureRecognizers: Set()
            ..add(Factory<VerticalDragGestureRecognizer>(
                () => VerticalDragGestureRecognizer())),
        ),
      ),
    );
  }
}
