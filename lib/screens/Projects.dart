import 'package:flutter/material.dart';
import 'package:magremote/screens/CreateProject.dart';

class ProjectsPage extends StatefulWidget {
  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: Colors.white24,
          title: Padding(
            padding: new EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
              "Projects",
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateProjectDialog()),
                    );
                  },
                ))
          ],
        ),
        body: Padding(
          padding: new EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Center(
            child: Text(
              "Your  projects will appear here.",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ));
  }
}
