import 'package:flutter/material.dart';
import '../global_config.dart';
import 'reply_page.dart';


class QuestionPage extends StatefulWidget {
  @override
  QuestionPageState createState() => new QuestionPageState();

}

class QuestionPageState extends State<QuestionPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: new AppBar(
            title: Common.searchInput(context)
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("physics"), color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                      margin: const EdgeInsets.only(right: 8.0)
                    ),
                    new Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("Three-body (book)"), color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                        margin: const EdgeInsets.only(right: 8.0)
                    ),
                    new Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("Brain hole (network term)"), color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                    )
                  ],
                ),
                padding: new EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0, right: 16.0),
                color: GlobalConfig.cardBackgroundColor,
              ),
              new Container(
                child: new Text("Is it possible to make water droplets in Three-body ?", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, height: 1.3, color: GlobalConfig.dark == true ? Colors.white70 : Colors.black)),
                padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                alignment: Alignment.topLeft,
                color: GlobalConfig.cardBackgroundColor
              ),
              new Container(
                child: new Text(
                    "If only the characteristics of extending the strong interaction force are considered, regardless of the characteristics of the right-angle turning, can the water droplet be produced? In other words, can strong interaction forces be extended in ways that affect microscopic physical quantities?",
                    style: new TextStyle(height: 1.4, fontSize: 16.0, color: GlobalConfig.fontColor), textAlign: TextAlign.start
                ),
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                decoration: new BoxDecoration(
                  border: new BorderDirectional(bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12)),
                  color: GlobalConfig.cardBackgroundColor
                ),
              ),
              new Container(
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        flex: 1,
                        child: new Container(
                          child: new FlatButton.icon(
                            onPressed: (){},
                            icon: new Icon(Icons.group_add),
                            label: new Text("Invitation to answer"),
                            textTheme: ButtonTextTheme.accent,
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(end: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                          ),
                        ),
                      ),
                      new Expanded(
                        flex: 1,
                        child: new Container(
                          child: new FlatButton.icon(
                            onPressed: (){},
                            icon: new Icon(Icons.brush),
                            label: new Text("Write answer"),
                            textTheme: ButtonTextTheme.accent,
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(end: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: new BoxDecoration(
                    color: GlobalConfig.cardBackgroundColor
                  ),
              ),
              new Container(
                margin: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        child: new Text("173 answers", style: new TextStyle(color: GlobalConfig.fontColor)),
                        margin: const EdgeInsets.only(left: 16.0),
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        child: new PopupMenuButton(
                          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                            new PopupMenuItem<String>(
                              value: 'quality',
                              child: new Container(
                                child: new Row(
                                  children: <Widget>[
                                    new Text('Sort by quality'),
                                    new Icon(Icons.check, color: Colors.blue,)
                                  ],
                                ),
                              )
                            ),
                            new PopupMenuItem<String>(
                              value: 'time',
                              child: new Text('Sort by time')
                            )
                          ],
                          child: new Container(
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new Text("Sort by quality", style: new TextStyle(color: GlobalConfig.fontColor)),
                                new Icon(Icons.keyboard_arrow_down, color: GlobalConfig.fontColor)
                              ],
                            ),
                          ),
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                color: GlobalConfig.cardBackgroundColor,
                margin: const EdgeInsets.only(bottom: 5.0),
                child: new FlatButton(
                  onPressed: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) {
                          return new ReplyPage();
                        }
                    ));
                  },
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              child: new CircleAvatar(
                                  backgroundImage: new NetworkImage("https://pic3.zhimg.com/fc4c1cb34c2901a1a8c05488bbd76fa2_xs.jpg"),
                                  radius: 11.0
                              ),
                            ),
                            new Text(" Nomadic", style: new TextStyle(color: GlobalConfig.fontColor))
                          ],
                        ),
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                      new Container(
                          child: new Text(
                              "First, a few years ago I talked to a professor of physics at the 985211 level university about this issue. He is very serious about using strong interactions as tools to machine this level of material at the atomic angle, for the current physical...",
                              style: new TextStyle(height: 1.3, color: GlobalConfig.fontColor)
                          ),
                          margin: new EdgeInsets.only(top: 6.0, bottom: 14.0),
                          alignment: Alignment.topLeft
                      ),
                      new Container(
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                                child: new Text("1K NG · 262 comments · 10 days ago", style: new TextStyle(color: GlobalConfig.fontColor))
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(bottom: 10.0),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        )
      )
    );
  }

}