import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Padding(
          padding: new EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Text(
            "Tasks",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => CreateIssuePage()),
                  // );
                },
              ))
        ],
      ),
      body: Padding(
        padding: new EdgeInsets.fromLTRB(
          5,
          0,
          5,
          0,
        ),
        child: Center(
          child: Text(
            "Your tasks of related project \n will appear here.",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
