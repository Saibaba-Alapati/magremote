import 'package:flutter/material.dart';
import 'package:magremote/services/CategoryContainerService.dart';
import 'package:magremote/viewModels/CategoryContainerModel.dart';

class CategoryTag extends StatefulWidget {
  CategoryContainer category;
  CategoryTag(this.category, {Key? key}) : super(key: key);
  @override
  _CategoryTagState createState() => _CategoryTagState();
}

class _CategoryTagState extends State<CategoryTag> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        final val =
            CategoryContainerService().findAllTrackersofCC(widget.category.id);
      },
      child: Text("${widget.category.name}"),
    );
  }
}
