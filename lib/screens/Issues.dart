import 'package:flutter/material.dart';
import 'package:magremote/screens/EditorPage.dart';

class IssuesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Padding(
            padding: new EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text("Issues")),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: new EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: IconButton(
              icon: Icon(
                Icons.add,
                size: 40,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditorPage()),
                );
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: new EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: Center(
          child: Text(
            "Your issues of related project \nwill appear here.",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
