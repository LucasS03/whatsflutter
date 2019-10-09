import 'package:flutter/material.dart';
import 'package:whatsflutter/screen/status/modelContactStatus.dart';
import 'package:whatsflutter/screen/status/modelMyStatus.dart';

import 'divisor.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              ModelMyStatus(),

              Divisor("Atualizações recentes"),
              ModelContactStatus("Joey Tribbiani", "há 50 minutos"),

              Divisor("Atualizações visualizadas"),
              ModelContactStatus("Rachel Green", "Hoje 21:50")
            ],
          )
        )
      ),
    );
  }
}