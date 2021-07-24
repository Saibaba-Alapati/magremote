import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

var projectID = 'Hello';
var uuid = Uuid();

class CreateProject extends StatefulWidget {
  @override
  _CreateProjectState createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        shadowColor: Colors.black,
        title: Text(
          "New Project",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: size.height * 0.02),
          Center(
            child: Text(
              "Gear Up",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            "assets/project2.png",
            height: size.height * 0,
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(70, 0, 70, 10),
            child: TextField(
              decoration: new InputDecoration(
                // prefixIcon: Icon(Icons.person),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                hintText: 'Enter your project name ',
                hintStyle: new TextStyle(color: Colors.grey[800]),
                labelText: 'Project name',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                contentPadding: EdgeInsets.all(5.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Padding(
            padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.blueAccent;
                    else if (states.contains(MaterialState.disabled))
                      return Colors.grey;
                    return Colors.blueAccent; // Use the component's default.
                  },
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              child: Text("Create Project"),
              onPressed: () {
                projectID = uuid.v4(options: {'rng': UuidUtil.cryptoRNG});
              },
            ),
          ),
          Text("$projectID")
        ],
      ),
    );
  }
}
