import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:magremote/views/screens/ReadTrackerPage.dart';

class IssueCard extends StatefulWidget {
  final issuename;
  final doc;
  IssueCard({
    this.issuename,
    this.doc,
  });
  @override
  _IssueCardState createState() => _IssueCardState();
}

class _IssueCardState extends State<IssueCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ReadTrackerPage(content: '${widget.doc}'),
            ),
          );
        },
        child: Text('${widget.issuename}'),
      ),
    );
  }
}
