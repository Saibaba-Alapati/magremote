import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Padding(
          padding: new EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Text(
            "Events",
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
                onPressed: () {},
              ))
        ],
      ),
      body: Padding(
        padding: new EdgeInsets.fromLTRB(5, 0, 10, 0),
        child: Center(
          child: Text(
            "Your planned events of \nrelated project will appear here.",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
