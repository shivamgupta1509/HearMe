import 'package:flutter/material.dart';
import 'package:hearme_app/home/textinput.dart';
import 'package:hearme_app/home/voiceinput.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const String BOT_URL = 'http://10.0.2.2:5000/hearme';
  dynamic decode = '';
  String textmsg = "";
  dynamic res;
  TextEditingController queryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
        ),
        title: Text(
          "HearMe",
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            tooltip: 'More',
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextInput()),
                );
              },
              child: Text(
                "Text Input",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VoiceInput()),
                );
              },
              child: Text(
                "Voice Input",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
