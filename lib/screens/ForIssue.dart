import 'dart:ui';
// import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:flutter/cupertino.dart';

class NextScreen extends StatefulWidget {
  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  var title;
  String _date = "Not set";
  String _time = "Not set";
  String _priority = "Not Set";
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
        title: Text("Fields"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: new EdgeInsets.fromLTRB(70, 30, 70, 15),
            child: TextField(
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                hintText: 'title',
                hintStyle: new TextStyle(color: Colors.grey[800]),
                labelText: 'Title',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                contentPadding: EdgeInsets.all(5.0),
              ),
              onChanged: (val) {
                title = val;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 15, 70, 15),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.red)))),
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          theme: DatePickerTheme(
                            containerHeight: 200.0,
                          ),
                          showTitleActions: true,
                          minTime: DateTime(2000, 1, 1),
                          maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                        print('confirm $date');
                        _date = '${date.year} - ${date.month} - ${date.day}';
                        setState(() {});
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.date_range,
                                      size: 15.0,
                                    ),
                                    Text(
                                      " $_date",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            "  Change",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                    // color: Colors.white10,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.red)))),
                    onPressed: () {
                      DatePicker.showTimePicker(context,
                          theme: DatePickerTheme(
                            containerHeight: 200.0,
                          ),
                          showTitleActions: true, onConfirm: (time) {
                        print('confirm $time');
                        _time =
                            '${time.hour} : ${time.minute} : ${time.second}';
                        setState(() {});
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.access_time,
                                      size: 15.0,
                                    ),
                                    Text(
                                      " $_time",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Change",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(70, 0, 70, 15),
            child: TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.red)))),
              onPressed: () {
                _priorityModalBottomSheet(context);
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 200,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        iconreturn(_priority),
                        Text(
                          "$_priority",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "Change",
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
            child: FractionallySizedBox(
              widthFactor: 0.60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    primary: Colors.purple,
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                child: Text("create Issue"),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }

  void _priorityModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(
                      Icons.arrow_upward,
                      color: Colors.red[900],
                    ),
                    title: new Text('Highest'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _priority = "Highest";
                      });
                    }),
                new ListTile(
                  leading: new Icon(
                    Icons.arrow_upward,
                    color: Colors.red,
                  ),
                  title: new Text('High'),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      _priority = "High";
                    });
                  },
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.arrow_upward,
                    color: Colors.yellow,
                  ),
                  title: new Text('Medium'),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      _priority = "Medium";
                    });
                  },
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.blueAccent,
                  ),
                  title: new Text('Low'),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      _priority = "Low";
                    });
                  },
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.blue,
                  ),
                  title: new Text('Lowest'),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      _priority = "Lowest";
                    });
                  },
                ),
              ],
            ),
          );
        });
  }
}

Widget iconreturn(String text) {
  switch (text) {
    case 'Highest':
      return Icon(
        Icons.arrow_upward_rounded,
        color: Colors.red[900],
      );
    case 'High':
      return Icon(
        Icons.arrow_upward_rounded,
        color: Colors.red,
      );
    case 'Medium':
      return Icon(
        Icons.arrow_upward_rounded,
        color: Colors.yellow,
      );
    case 'Low':
      return Icon(
        Icons.arrow_downward_rounded,
        color: Colors.blueAccent,
      );
    case 'Lowest':
      return Icon(
        Icons.arrow_downward_rounded,
        color: Colors.blue,
      );

    default:
      return Icon(Icons.arrow_upward);
  }
}
//need a field for project
//need a field for assignee
//need a field for

// Padding(
//             padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
//             child: DropdownSearch<String>(
//               mode: Mode.BOTTOM_SHEET,
//               showClearButton: true,
//               maxHeight: 350,
//               dropDownButton: Icon(Icons.more_vert_rounded),
//               dropdownSearchDecoration: InputDecoration(
//                   labelStyle: TextStyle(color: Colors.white),
//                   hintStyle: TextStyle(color: Colors.white),
//                   enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: Colors.white),
//                   ),
//                   border: new OutlineInputBorder(
//                       borderRadius:
//                           BorderRadius.all(const Radius.circular(10.0)))),
//               items: ["Highest", "High", "Medium", "Low", 'Lowest'],
//               label: "Priority",
//               onChanged: print,
//               selectedItem: "Lowest",
//               popupBackgroundColor: Colors.white38,
//               dropdownBuilderSupportsNullItem: true,
//               showSelectedItem: true,
//               popupShape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(24),
//                   topRight: Radius.circular(24),
//                 ),
//               ),
//             ),
//           ),
