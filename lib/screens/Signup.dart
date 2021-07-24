import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:magremote/services/authservice.dart';
import 'Magremote.dart';

bool invisible = true;

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

String? _gender;

class _SignupPageState extends State<SignupPage> {
  var firstname, lastname, gender, email, username, password;
  bool _obscureText = true;
  @override

  // void _toggle() {
  //   setState(() {
  //     _obscureText = !_obscureText;
  //   });
  // }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: size.height * 0.02),
          Center(
            child: Text(
              "SIGNUP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Center(
            child: Text(
              "Create account",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Image.asset(
            "assets/login.png",
            height: size.height * 0.30,
          ),
          SizedBox(height: size.height * 0.02),
          Padding(
            padding: new EdgeInsets.fromLTRB(70, 0, 70, 10),
            child: TextField(
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                hintText: 'Enter your firstname',
                hintStyle: new TextStyle(color: Colors.grey[800]),
                labelText: 'Firstname',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                contentPadding: EdgeInsets.all(5.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              onChanged: (val) {
                firstname = val;
              },
            ),
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
                hintText: 'Enter your lastname ',
                hintStyle: new TextStyle(color: Colors.grey[800]),
                labelText: 'Lastname',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                contentPadding: EdgeInsets.all(5.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              onChanged: (val) {
                lastname = val;
              },
            ),
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
                hintText: 'Enter your username ',
                hintStyle: new TextStyle(color: Colors.grey[800]),
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                contentPadding: EdgeInsets.all(5.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              onChanged: (val) {
                username = val;
              },
            ),
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(70, 0, 70, 10),
            child: DropdownButtonFormField<String>(
              iconDisabledColor: Colors.black,
              iconEnabledColor: Colors.white,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: new OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(10.0)))),
              value: _gender,
              items: ["Male", "Female"]
                  .map(
                    (label) => DropdownMenuItem(
                      child: Text(
                        label.toString(),
                      ),
                      value: label,
                    ),
                  )
                  .toList(),
              hint: Text(
                "Gender",
                style: TextStyle(color: Colors.white),
              ),
              onChanged: (value) {
                setState(() {
                  gender = value;
                  _gender = value;
                });
              },
            ),
          ),
          Padding(
              padding: new EdgeInsets.fromLTRB(70, 0, 70, 10),
              child: TextField(
                obscureText: _obscureText,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  hintText: 'Enter your Password',
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.all(5.0),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  suffixIcon: IconButton(
                      icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
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
            padding: new EdgeInsets.fromLTRB(70, 0, 70, 10),
            child: TextField(
              decoration: new InputDecoration(
                prefixIcon: Icon(Icons.mail, color: Colors.white),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                hintText: 'Enter your Email',
                hintStyle: new TextStyle(color: Colors.grey[800]),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                contentPadding: EdgeInsets.all(5.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              onChanged: (val) {
                email = val;
              },
            ),
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(90, 10, 90, 20),
            child: ElevatedButton(
              onPressed: () {
                AuthService()
                    .addUser(
                        firstname, lastname, username, gender, password, email)
                    .then((val) {
                  Fluttertoast.showToast(
                      msg: val.data['msg'],
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                  if (val.data['success']) {
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
                      return Colors.blue;
                    else if (states.contains(MaterialState.disabled))
                      return Colors.grey;
                    return Colors.blue; // Use the component's default.
                  },
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              child: Text(
                "Signup",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
