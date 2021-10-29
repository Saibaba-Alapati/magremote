import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:magremote/viewModels/UserModel.dart';
import 'Magremote.dart';
import 'SignupPage.dart';
import '../../services/Authservice.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool invisible = true;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late FocusNode _focusNode;
  bool _obscureText = true;
  var username, password, token;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: size.height * 0.01),
          Center(
            child: Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Center(
            child: Text(
              "Access account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(height: size.height * 0.015),
          Center(
            child: Padding(
              padding: new EdgeInsets.fromLTRB(10, 0, 5, 0),
              child: Text(
                "OR",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text(
                "or Login with Email",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Image(
            image: AssetImage("assets/images/login.png"),
            height: size.height * 0.3,
          ),
          SizedBox(height: size.height * 0.01),
          Padding(
            padding: new EdgeInsets.fromLTRB(70, 0, 70, 10),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: new InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                hintText: 'Enter your username or Email',
                hintStyle: new TextStyle(color: Colors.grey[800]),
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[800]!)),
                contentPadding: EdgeInsets.all(5.0),
              ),
              onChanged: (val) {
                username = val;
              },
            ),
          ),
          Padding(
              padding: new EdgeInsets.fromLTRB(70, 0, 70, 10),
              child: TextField(
                style: TextStyle(color: Colors.black),
                obscureText: _obscureText,
                decoration: new InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_rounded,
                    color: Colors.black,
                  ),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  hintText: 'Enter your Password',
                  hintStyle: new TextStyle(color: Colors.black),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.all(5.0),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black,
                        // Theme.of(context).primaryColorDark
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      }),
                ),
                onChanged: (val) {
                  password = val;
                },
              )),
          Padding(
            padding: new EdgeInsets.fromLTRB(90, 10, 90, 12),
            child: TextButton(
              onPressed: () {
                AuthService().login(username, password).then((val) async {
                  List<User> results = userFromJson(val);
                  User loginResults = results[0];
                  int id =
                      (loginResults.id != null) ? (loginResults.id) as int : -1;
                  String username = (loginResults.username != null)
                      ? (loginResults.username) as String
                      : "";
                  String lastname = (loginResults.lastname != null)
                      ? (loginResults.lastname) as String
                      : "";
                  String firstname = (loginResults.firstname != null)
                      ? (loginResults.username) as String
                      : "";
                  String email = (loginResults.email != null)
                      ? (loginResults.username) as String
                      : "";
                  if (id > 0) {
                    // ignore: invalid_use_of_visible_for_testing_member
                    SharedPreferences.setMockInitialValues({});
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.setString('username', username);
                    prefs.setString('firstname', firstname);
                    prefs.setString('lastname', lastname);
                    prefs.setString('email', email);
                    prefs.setInt('user_id', id);
                    Fluttertoast.showToast(
                        msg: 'Authenticated',
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green,
                        textColor: Colors.black,
                        fontSize: 16.0);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Magremote(),
                      ),
                    );
                  }
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.green;
                    else if (states.contains(MaterialState.disabled))
                      return Colors.grey;
                    return Colors.green; // Use the component's default.
                  },
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(110, 0, 0, 10),
            child: Text(
              "Dont have account?",
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(90, 6, 90, 7),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: new Text(
                "Register",
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled))
                      return Colors.grey;
                    return Colors.green; // Use the component's default.
                  },
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      // ),
    );
  }
}

// class ShadePaint extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final height = size.height;
//     final width = size.width;
//     Paint paint = Paint();
//     Path mainBackground = Path();
//     mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
//     paint.color = Colors.black87;
//     canvas.drawPath(mainBackground, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return oldDelegate != this;
//   }
// }
// Color(0xFFE2EAF4)

//add password and emal validation
