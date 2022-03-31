import 'package:flutter/material.dart';

class VoiceInput extends StatefulWidget {
  @override
  _VoiceInputState createState() => _VoiceInputState();
}

class _VoiceInputState extends State<VoiceInput> {
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
          "Voice Input",
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
      body: Container(),
    );
  }
}
