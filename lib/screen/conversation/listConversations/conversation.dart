import 'package:flutter/material.dart';
import 'package:whatsflutter/screen/conversation/listConversations/modelConversation.dart';

class Conversation extends StatefulWidget {
  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFFEFEFE),
        padding: EdgeInsets.only(top: 5.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ModelConversation(
              "Lucas Sena", 
              "Texto de teste 1",
              "00:00",
              true
            ),
            ModelConversation(
              "Samuel Lucas", 
              "Texto gigante também se adapta ao WhatsFlutter, o que acha?",
              "Ontem",
              false
            ),
          ]
        )
      )
    );
  }
}