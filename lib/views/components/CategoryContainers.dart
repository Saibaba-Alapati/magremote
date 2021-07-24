import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class CategoryContainer extends StatefulWidget {
  @override
  _CategoryContainerState createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  String _project = "Not Set";
  int iconnumber = 1;
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
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ],
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          )
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
}
