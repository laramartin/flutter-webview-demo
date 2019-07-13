class ResourceItem {
  final String title;
  final String url;

  ResourceItem(this.title, this.url)
      : assert(title != null),
        assert(url != null);
}

var resourcesList = <ResourceItem>[
  ResourceItem("Official documentation", "https://flutter.dev/docs"),
  ResourceItem("Flutter Cookbook", "https://flutter.dev/docs/cookbook"),
  ResourceItem("Articles from the Flutter team", "https://medium.com/flutter"),
  ResourceItem("Articles from the Flutter Community",
      "https://medium.com/flutter-community"),
  ResourceItem("Flutter Gallery",
      "https://github.com/flutter/flutter/tree/master/examples/flutter_gallery"),
  ResourceItem("Flutter Sample apps",
      "https://github.com/flutter/samples/blob/master/INDEX.md"),
  ResourceItem("Dart Codelab",
      "https://codelabs.developers.google.com/codelabs/from-java-to-dart/#0"),
  ResourceItem("Flutter Codelabs", "https://flutter.dev/docs/codelabs"),
  ResourceItem("Udacity Flutter Course",
      "https://eu.udacity.com/course/build-native-mobile-apps-with-flutter--ud905"),
];
