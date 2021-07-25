import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
// import 'package:magremote/services/TrackerContainersService.dart';
// import 'package:magremote/views/widgets/CategoryContainers.dart';

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  // final items;
  String _project = "Not Set";
  // String _trackerContainer = "Not Set";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                _projectModalBottomSheet(context);
              },
              child: Row(
                children: <Widget>[
                  Text(
                    "$_project",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  _trackerContainerModalBottomSheet(context);
                },
                child: Row(
                  children: <Widget>[
                    Text(
                      "$_project",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ],
          ),
          // ListView.builder(
          //   itemCount: items.lenght,
          //   itemBuilder: (context, index) {
          //     return CategoryContainer();
          //   },
          // ),
        ],
      ),
    );
  }

  void _projectModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    title: new Text('To Do'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _project = "To Do";
                      });
                    }),
                new ListTile(
                  title: new Text('In Progress'),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      _project = "In Progress";
                    });
                  },
                ),
                new ListTile(
                  title: new Text('Done'),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      _project = "Done";
                    });
                  },
                ),
              ],
            ),
          );
        });
  }

  void _trackerContainerModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    title: new Text('To Do'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _project = "To Do";
                      });
                    }),
                new ListTile(
                  title: new Text('In Progress'),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      _project = "In Progress";
                    });
                  },
                ),
                new ListTile(
                  title: new Text('Done'),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      _project = "Done";
                    });
                  },
                ),
              ],
            ),
          );
        });
  }
}
