import 'package:flutter/material.dart';
import '/views/screens/ProjectPage.dart';
import 'views/screens/CreateProject.dart';
import 'views/screens/EditorPage.dart';
import 'views/screens/IssueDetails.dart';
import 'views/screens/Magremote.dart';
import 'views/screens/Login.dart';
import 'views/screens/HomePage.dart';
import 'views/screens/settings.dart';
import 'views/screens/ProjectsPage.dart';
import 'views/screens/IssuesPage.dart';
import 'views/screens/Teammembers.dart';
import 'views/screens/Signup.dart';

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
      initialRoute: '/login',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/issues': (context) => IssuesPage(),
        '/newissue': (context) => EditorPage(),
        '/issuedetails': (context) => IssueDetails(),
        '/projects': (context) => ProjectsPage(),
        '/newproject': (context) => CreateProjectDialog(),
        '/projectpages': (context) => ProjectPage(),
        '/teammembers': (context) => TeamMembersPage(),
        '/settings': (context) => SettingsPage(),
        '/magremote': (context) => Magremote(),
      },
    );
  }
}
