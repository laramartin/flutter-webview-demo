import 'package:flutter/material.dart';
import 'package:resources_to_learn_flutter/data/resource_item.dart';
import 'package:resources_to_learn_flutter/webview_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
        Container(
          height: 200.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                WebView(
                  initialUrl: item.url,
                  javascriptMode: JavascriptMode.unrestricted,
                  onPageFinished: (url) => print("finished loading: $url"),
//                  gestureRecognizers: Set()
//                    ..add(Factory<VerticalDragGestureRecognizer>(
//                        () => VerticalDragGestureRecognizer())),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              WebViewScreen(resourceItem: item)),
                    ),
                    child: Container(height: 200),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
