import 'package:flutter/material.dart';
import 'package:whatsflutter/static/colors.dart';

class ModelMyStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomColors.yellow1,
                    image: DecorationImage(
                      image: AssetImage("assets/images/person.png"),
                      fit: BoxFit.cover
                    ),
                  ),
                  child: Align(
                    alignment:Alignment.bottomRight,
                    child: CircleAvatar(
                      backgroundColor: CustomColors.green3,
                      maxRadius: 10,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    )
                  ),
                ),
                SizedBox(width: 20,),

                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Meu status", 
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "Toque para atualizar seu status",
                              softWrap: false,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600]
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  )
                )
              ],
            )
          ),
        ],
      )
    );
  }
}