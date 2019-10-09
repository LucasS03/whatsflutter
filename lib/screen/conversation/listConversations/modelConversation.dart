import 'package:flutter/material.dart';
import 'package:whatsflutter/static/colors.dart';

class ModelConversation extends StatelessWidget {

  final String name;
  final String text;
  final String hour;
  final bool viewed;
  ModelConversation(this.name, this.text, this.hour, this.viewed);

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
                CircleAvatar(
                  minRadius: 27,
                  backgroundColor: CustomColors.yellow1,
                  child: Image.asset(
                    "assets/images/person.png", 
                    height: 50, 
                    width: 50
                  )
                ),
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
                            this.name, 
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            this.hour,
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
                                  this.viewed ? Icons.done_all : Icons.done,
                                  color: Colors.grey[600],
                                  size: 20,
                                ),
                                SizedBox(width: 3.0,),
                                Flexible(
                                  child: Text(
                                    this.text,
                                    softWrap: false,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600]
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.volume_off,
                            color: Colors.grey[600],
                            size: 20
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0),
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CustomColors.green3
                            ),
                            child: Text(
                              "1",
                              style: Theme.of(context).textTheme.caption.merge(
                                TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                              ),
                            ),
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
    );
  }
}