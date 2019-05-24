import 'package:flutter/material.dart';
import '../global_config.dart';
import 'question_page.dart';


class Common {
  static Widget searchInput(BuildContext context) {

    return new Container(
      child: new Row(
        children: <Widget>[
          new Container(
            child: new FlatButton.icon(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: new Icon(Icons.arrow_back, color: Colors.black54),
              label: new Text("",style: TextStyle(color: Colors.black54),),
            ),
            width: 60.0,
          ),
          new Expanded(
            child: new TextField(
              decoration: new InputDecoration.collapsed(
                  hintText: "Search than content",
                  hintStyle: new TextStyle(color: Colors.black54)
              ),
            ),
          ),
          new Container(
            child: new IconButton(icon: new Icon(Icons.share, color: GlobalConfig.fontColor), onPressed: (){}, padding: const EdgeInsets.all(0.0), iconSize: 18.0),
          ),
          new Container(
            child: new IconButton(icon: new Icon(Icons.list, color: GlobalConfig.fontColor), onPressed: (){}, padding: const EdgeInsets.all(0.0), iconSize: 18.0),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      ),
      height: 36.0,
      //padding: new EdgeInsets.only(top:8.0, bottom: 8.0, left: 8.0, right: 8.0),
    );
  }
}

class ReplyPage extends StatefulWidget {

  @override
  ReplyPageState createState() => new ReplyPageState();
}

class ReplyPageState extends State<ReplyPage> {

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
                  child: new FlatButton(
                    onPressed: (){
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) {
                            return new QuestionPage();
                          }
                      ));
                    },
                    child: new Container(
                      child: new Text("What do you think is the most civilized civilization in the Three-body?", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, height: 1.3, color: GlobalConfig.dark == true? Colors.white70 : Colors.black)),
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.topLeft,
                    ),
                    color: GlobalConfig.cardBackgroundColor,
                  ),
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(bottom: new BorderSide(color: Colors.white10))
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
                              icon: new Icon(Icons.brush),
                              label: new Text("Write answer"),
                              textTheme: ButtonTextTheme.accent,
                            ),
                            decoration: new BoxDecoration(
                                border: new BorderDirectional(end: new BorderSide(color: Colors.white10))
                            ),
                          ),
                        ),
                        new Expanded(
                          flex: 1,
                          child: new Container(
                            child: new FlatButton(
                              onPressed: (){
                                Navigator.of(context).push(new MaterialPageRoute(
                                    builder: (context) {
                                      return new QuestionPage();
                                    }
                                ));
                              },
                              child: new Text("See all 10000 answers > "),
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: new BoxDecoration(
                      color: GlobalConfig.cardBackgroundColor,
                    ),
                    margin: new EdgeInsets.only(bottom: 10.0)
                ),
                new Container(
                  child: new ListTile(
                      leading: new CircleAvatar(
                          backgroundImage: new NetworkImage("https://pic3.zhimg.com/v2-cd467bb9bb31d0384f065cf0bd677930_xl.jpg"),
                          radius: 20.0
                      ),
                      title: new Text("Flutter"),
                      subtitle: new Text("Life is like a trip, I am also a pedestrian."),
                      trailing: new RaisedButton.icon(onPressed: (){}, icon: new Icon(Icons.add, color: Colors.white), label: new Text("attention", style: new TextStyle(color: Colors.white),), color: Colors.blue,)
                  ),
                  decoration: new BoxDecoration(
                      color: GlobalConfig.cardBackgroundColor,
                      border: new BorderDirectional(bottom: new BorderSide(color: Colors.white10))
                  ),
                ),
                new Container(
                  child: new Text(
                      "The cosmic pattern of the dark forest defined by the three-body movement is the mutual attack and destruction of civilizations. The more advanced, the more you understand the hidden self-cleaning, and never do the stupid behavior of detecting each other's civilization. \n\n However, the return movement jumped out of this dark forest rule, not playing dark forest strikes, not only detecting other universe civilizations, but also understanding the other civilization, and it is all civilizations of the universe. \n\nThis is a kind of confident technical strength, in order to jump out of the dark forest survival rules.",
                      style: new TextStyle(height: 1.4, fontSize: 16.0, color: GlobalConfig.fontColor), textAlign: TextAlign.start
                  ),
                  margin: const EdgeInsets.all(16.0),
                )
              ],
            ),
          ),
          bottomNavigationBar: new BottomAppBar(
              child: new Container(
                height: 60.0,

                child: new Row(

                  children: <Widget>[
                    new Container(
                      child: new FlatButton.icon(onPressed: (){}, label: new Text("Endorsed 10 K"), color: GlobalConfig.searchBackgroundColor, icon: new Icon(Icons.arrow_drop_up),),
                      margin: new EdgeInsets.only(left: 16.0),

                      height: 30.0,

                    ),
                    new Container(
                      child: new IconButton(onPressed: (){}, icon: new Icon(Icons.arrow_drop_down),padding: const EdgeInsets.all(0.0)),
                      margin: new EdgeInsets.only(left: 8.0),
                      height: 30.0,
                      decoration: new BoxDecoration(
                        borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
                        color: GlobalConfig.searchBackgroundColor,
                      ),
                    ),

                    new Expanded(

                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,


                          children: <Widget>[
                            new IconButton(
                                onPressed: (){ print("icon");},
                                padding: const EdgeInsets.only(bottom: 8.0),
                                icon: new Container(
                                  child: new Column(
                                    children: <Widget>[

                                      new Icon(Icons.favorite, size: 18.0, color: GlobalConfig.fontColor,),
                                      new Text("thank", style: new TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),)
                                    ],
                                  ),
                                  margin: const EdgeInsets.only(),
                                  height: 30.0,
                                )
                            ),
                            new IconButton(
                                onPressed: (){ print("icon");},
                                padding: const EdgeInsets.only(bottom: 8.0),
                                icon: new Container(
                                  child: new Column(
                                    children: <Widget>[
                                      new Icon(Icons.star, size: 18.0, color: GlobalConfig.fontColor,),
                                      new Text("Collection", style: new TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),)
                                    ],
                                  ),
                                  margin: const EdgeInsets.only(),
                                  height: 30.0,
                                )
                            ),
                            new IconButton(
                                onPressed: (){ print("icon");},
                                padding: const EdgeInsets.only(bottom: 8.0),
                                icon: new Container(
                                  child: new Column(
                                    children: <Widget>[
                                      new Icon(Icons.mode_comment, size: 18.0, color: GlobalConfig.fontColor,),
                                      new Text("345", style: new TextStyle(fontSize: 10.0, color: GlobalConfig.fontColor),)
                                    ],
                                  ),
                                  margin: const EdgeInsets.only(),
                                  height: 30.0,
                                )
                            ),
                          ],
                        )
                    )
                  ],
                ),
                color: GlobalConfig.cardBackgroundColor,
              )
          ),
        )
    );
  }

}