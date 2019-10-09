import 'package:flutter/material.dart';
import 'package:whatsflutter/screen/call/call.dart';
import 'package:whatsflutter/screen/camera/camera.dart';
import 'package:whatsflutter/screen/conversation/listConversations/conversation.dart';
import 'package:whatsflutter/screen/status/status.dart';
import 'package:whatsflutter/static/colors.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  List<String> options = [
    "Novo grupo",
    "Nova transmissão",
    "WhatsFlutter Web",
    "Mensagens favoritas",
    "Configurações",
  ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsFlutter"),
          backgroundColor: CustomColors.green1,

          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),

            PopupMenuButton<String>(
              elevation: 3.2,
              tooltip: 'Mais opções',
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context) {
                return options.map((String option) {
                  return PopupMenuItem<String>(
                    value: option,
                    textStyle: TextStyle(
                      color: CustomColors.black1, 
                      fontWeight: FontWeight.normal
                    ),
                    child: Text(
                      option, 
                      style: TextStyle(
                        fontSize: 15
                      )
                    ),
                  );
                }).toList();
              },
            ),
          ],
          
          bottom: TabBar(
            indicatorColor: CustomColors.white1,
            indicatorWeight: 4,
            isScrollable: true,
            indicatorPadding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            tabs: [
              tabScreen(
                MediaQuery.of(context).size.width*0.13, 
                Tab(icon: Icon(Icons.camera_alt))
              ),
              tabScreen(
                MediaQuery.of(context).size.width*0.29,
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("CONVERSAS "),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                        child: Text(
                          "1",
                          style: Theme.of(context).textTheme.caption.merge(
                            TextStyle(color: CustomColors.green1, fontWeight: FontWeight.bold)
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ),
              tabScreen(
                MediaQuery.of(context).size.width*0.29,
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("STATUS "),
                      Container(
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        )
                      )
                    ],
                  ),
                )
              ),
              tabScreen(
                MediaQuery.of(context).size.width*0.29,
                Tab(text: "CHAMADAS")
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Camera(),
            Conversation(),
            Status(),
            Call(),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: CustomColors.green3,
          child: Icon(Icons.comment),
        ),
        
      )
    );
  }

  Widget tabScreen(double width, Widget custom) {
    return Container(
      width: width,
      child: custom,
    );
  }

}
