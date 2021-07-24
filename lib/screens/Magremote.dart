import 'package:flutter/material.dart';
import 'Issues.dart';
import 'Tasks.dart';
import 'Projects.dart';

class Magremote extends StatefulWidget {
  @override
  _MagremoteState createState() => _MagremoteState();
}

class _MagremoteState extends State<Magremote> {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          Icons.folder_rounded,
          Icons.event_available_rounded,
          Icons.assignment_rounded,
          Icons.report_problem_rounded,
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 0,
      ),
      body: IndexedStack(
        children: <Widget>[
          ProjectsPage(),
          TasksPage(),
          IssuesPage(),
        ],
        index: _selectedItem,
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
      required this.iconList,
      required this.onChange});
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];
    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }
    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedIndex
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 4, color: Colors.red),
                ),
                gradient: LinearGradient(colors: [
                  Colors.green.withOpacity(0.3),
                  Colors.green.withOpacity(0.015)
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
            : BoxDecoration(),
        child: Icon(
          icon,
          size: 30,
          color: index == _selectedIndex ? Colors.redAccent : Colors.grey,
        ),
      ),
    );
  }
}
//Need to implement focused menue-https://retroportalstudio.medium.com/auto-generate-flutter-custom-paint-code-flutter-shape-maker-be51e41daf89
