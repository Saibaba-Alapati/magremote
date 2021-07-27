import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Text("Name"),
              Text("Email"),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text("change password"),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text("settings"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
