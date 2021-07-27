import 'package:flutter/material.dart';
import '../screens/ProjectsPage.dart';
import '../screens/IssuesPage.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
          leading: Icon(Icons.account_tree),
          title: Text("Projects"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProjectsPage()),
            );
          },
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
          leading: Icon(Icons.people),
          title: Text("TeamMembers"),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Account"),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Quit"),
        )
      ],
    );
  }
}
