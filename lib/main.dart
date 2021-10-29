import 'package:flutter/material.dart';
import 'package:magremote/views/screens/ReadTrackerPage.dart';
import 'views/screens/ProjectPage.dart';
import 'views/screens/CreateProject.dart';
import 'views/screens/EditorPage.dart';
import 'views/screens/IssueDetails.dart';
import 'views/screens/Magremote.dart';
import 'views/screens/LoginPage.dart';
import 'views/screens/HomePage.dart';
import 'views/screens/AccountPage.dart';
import 'views/screens/ProjectsPage.dart';
// import 'views/screens/IssuesPage.dart';
import 'views/screens/TeammembersPage.dart';
import 'views/screens/SignupPage.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        // '/issues': (context) => IssuesPage(),
        '/newissue': (context) => EditorPage(),
        '/issuedetails': (context) => IssueDetails(),
        '/projects': (context) => ProjectsPage(),
        '/newproject': (context) => CreateProjectDialog(),
        '/projectpages': (context) => ProjectPage(),
        '/teammembers': (context) => TeamMembersPage(),
        '/account': (context) => AccountPage(),
        '/magremote': (context) => Magremote(),
        '/read': (context) => ReadTrackerPage(
              content:
                  '/Users/saibabaalapati/Desktop/magremote/assets/sample_data.json',
            )
      },
    );
  }
}
