import 'package:flutter/material.dart';
import 'Issues.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Magremote',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.grey[900],
        ),
        drawer: Drawer(
            child: ListView(children: [
          DrawerHeader(
            child: Center(
              child: Text(
                "MAGREMOTE",
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
            ),
            decoration: BoxDecoration(color: Colors.black),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
          ),
          ListTile(
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text("Projects"),
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text("Events"),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("Tasks"),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("TeamMembers"),
          ),
          ListTile(
            leading: Icon(Icons.report_problem),
            title: Text("Issues"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IssuesPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_applications),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Quit"),
          )
        ])),
        body: Center(
          child: Text(
            "Setup with Magremote, Made Easy.",
            style: TextStyle(),
          ),
        ));
  }
}
