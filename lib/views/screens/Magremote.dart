import 'package:flutter/material.dart';
import 'package:magremote/views/screens/HomePage.dart';
import 'package:magremote/views/screens/TeammembersPage.dart';
// import 'IssuesPage.dart';
import 'ProjectsPage.dart';

class Magremote extends StatefulWidget {
  @override
  _MagremoteState createState() => _MagremoteState();
}

class _MagremoteState extends State<Magremote> {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          Icons.home_max_outlined,
          Icons.account_tree_outlined,
          Icons.check_box_outlined,
          Icons.notifications_outlined,
          Icons.account_circle_outlined
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
          HomePage(),
          ProjectsPage(),
          // IssuesPage(),
          TeamMembersPage(),
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
    return Container(
      height: 90.0,
      margin: const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: _navBarItemList,
      ),
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
        child: Icon(
          icon,
          size: 30,
          color: index == _selectedIndex ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}
