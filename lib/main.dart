import 'package:flutter/material.dart';
import 'package:magremote/pages/EditorPage.dart';
import 'package:magremote/pages/ReadOnly.dart';
import 'package:magremote/screens/ForIssue.dart';
import 'package:magremote/screens/CreateProject.dart';
import 'screens/Magremote.dart';
import 'screens/Login.dart';
import 'screens/Home.dart';
import 'screens/Settings.dart';
import 'screens/Projects.dart';
import 'screens/Issues.dart';
import 'screens/Events.dart';
import 'screens/Teammembers.dart';
import 'screens/Signup.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        // ignore: deprecated_member_use
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      initialRoute: '/newissue',
      routes: {
        '/projects': (context) => ProjectsPage(),
        '/': (context) => Homepage(),
        '/issues': (context) => IssuesPage(),
        '/events': (context) => EventsPage(),
        '/teammembers': (context) => TeamMembersPage(),
        '/settings': (context) => SettingsPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/magremote': (context) => Magremote(),
        '/createissue': (context) => NextScreen(),
        '/newproject': (context) => CreateProject(),
        '/newissue': (context) => EditorPage(),
        '/readonly': (context) => ReadOnlyPage(),
      },
    );
  }
}
