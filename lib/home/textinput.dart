import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TextInput extends StatefulWidget {
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {

  static const String BOT_URL = 'http://10.0.2.2:5000/hearme';
  dynamic decode = '';
  String textmsg = "";
  dynamic res;
  TextEditingController queryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Text Input",
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
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: ListView(children: [
          TextField(
            controller: queryController,
          ),
          TextButton(

              onPressed: () async{
                res = await getResponse();
                setState(() {
                  textmsg = res;
                });
              },
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(
            height: 40,
          ),
          Text(
            textmsg,
            style: TextStyle(fontSize: 40, color: Colors.green),
          ),
        ]),
      ),
    );
  }

  //response
  getResponse() async {
    if (queryController.text.length > 0) {
      try {
        final response = await http.post(Uri.parse(BOT_URL),
            body: json.encode({"query": queryController.text}));
        decode = json.decode(response.body) as Map<String, dynamic>;
        // print(decode['query']);
      } catch (e) {
        print(e.toString());
      } finally {
        queryController.clear();
        return decode['query'];
      }
    }
  }
}
