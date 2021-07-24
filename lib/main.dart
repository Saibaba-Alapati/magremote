import 'package:flutter/material.dart';
import 'views/components/CategoryContainers.dart';
import 'views/screens/CreateProject.dart';
import 'views/screens/EditorPage.dart';
import 'views/screens/IssueDetails.dart';
import 'views/screens/ReadOnly.dart';
import 'views/screens/Magremote.dart';
import 'views/screens/Login.dart';
import 'views/screens/Home.dart';
import 'views/screens/Settings.dart';
import 'views/screens/Projects.dart';
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
      initialRoute: '/categorycontainer',
      routes: {
        '/projects': (context) => ProjectsPage(),
        '/': (context) => Homepage(),
        '/issues': (context) => IssuesPage(),
        '/teammembers': (context) => TeamMembersPage(),
        '/settings': (context) => SettingsPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/magremote': (context) => Magremote(),
        '/issuedetails': (context) => IssueDetails(),
        '/newproject': (context) => CreateProjectDialog(),
        '/newissue': (context) => EditorPage(),
        '/readonly': (context) => ReadOnlyPage(),
        '/categorycontainer': (context) => CategoryContainer(),
      },
    );
  }
}
