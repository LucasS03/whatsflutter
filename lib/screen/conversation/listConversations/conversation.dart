import 'package:flutter/material.dart';

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

        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            InkWell(
              onTap: () { },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(minRadius: 27,),
                        SizedBox(width: 10,),

                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Lucas Sena", 
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "00:00",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[600]
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Flexible(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.done_all,
                                          color: Colors.grey[600],
                                          size: 20,
                                        ),
                                        SizedBox(width: 3.0,),
                                        Text(
                                          "Teste",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[600]
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.volume_off,
                                    color: Colors.grey[600],
                                    size: 20
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider()
                            ],
                          )
                        )
                      ],
                    )
                  )
                ],
              )
            )
          ]
        )
      )
    );
  }
}