import 'package:flutter/material.dart';
import 'package:resources_to_learn_flutter/data/resource_item.dart';
import 'package:resources_to_learn_flutter/presentation/resource_card_content.dart';

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
