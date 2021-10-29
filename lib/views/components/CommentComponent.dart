import 'package:flutter/material.dart';
import 'package:magremote/services/UserService.dart';
import 'package:magremote/viewModels/TrackerCommentModel.dart';
import 'package:magremote/viewModels/UserModel.dart';

class CommentComponent extends StatefulWidget {
  final TrackerComment usercomment;
  const CommentComponent({
    required this.usercomment,
    Key? key,
  }) : super(key: key);
  @override
  _CommentComponentState createState() => _CommentComponentState();
}

class _CommentComponentState extends State<CommentComponent> {
  @override
  Widget build(BuildContext context) {
    final response = UserService().getUser(widget.usercomment.id);
    List<User> results = userFromJson(response);
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Text("${results[0].username}"),
            Text("Comment Content."),
          ],
        ),
      ),
    );
  }
}
