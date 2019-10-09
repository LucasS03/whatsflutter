import 'package:flutter/material.dart';

class Divisor extends StatelessWidget {
  final String title;

  Divisor(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10.0),
      width: MediaQuery.of(context).size.width,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border(
          top: BorderSide(
            color: Colors.black12,
            width: 1.0,
          )
        )
      ),
      child: Text(this.title),
    );
  }
}