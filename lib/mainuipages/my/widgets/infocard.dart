import 'package:flutter/material.dart';
import '../../../mainuipages/global_config.dart';


class InfoCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 10.0, bottom: 6.0),
      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
      child: new Column(
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            decoration: new BoxDecoration(
                color: GlobalConfig.dark == true ? Colors.white10 : new Color(0xFFF5F5F5),
                borderRadius: new BorderRadius.all(new Radius.circular(6.0))
            ),
            child: new FlatButton(
                onPressed: (){},
                child: new Container(
                  child: new ListTile(
                    leading: new Container(
                      child: new CircleAvatar(
                          backgroundImage: new NetworkImage("https://pic1.zhimg.com/v2-ec7ed574da66e1b495fcad2cc3d71cb9_xl.jpg"),
                          radius: 20.0
                      ),
                    ),
                    title: new Container(
                      margin: const EdgeInsets.only(bottom: 2.0),
                      child: new Text("learner"),
                    ),
                    subtitle: new Container(
                      margin: const EdgeInsets.only(top: 2.0),
                      child: new Text("View or edit your profile"),
                    ),
                  ),
                )
            ),
          ),
          new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  width: (MediaQuery.of(context).size.width - 6.0) / 4,
                  child: new FlatButton (
                      onPressed: (){},
                      child: new Container(
                        height: 50.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              child: new Text("57", style: new TextStyle(fontSize: 16.0, color: GlobalConfig.fontColor),),
                            ),
                            new Container(
                              child: new Text("My creation", style: new TextStyle(fontSize: 12.0, color: GlobalConfig.fontColor),),
                            ),
                          ],
                        ),
                      )
                  ),
                ),
                new Container(
                  height: 14.0,
                  width: 1.0,
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(
                          start: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12, width: 1.0)
                      )
                  ),
                ),
                new Container(
                  width: (MediaQuery.of(context).size.width - 6.0) / 4,
                  child: new FlatButton(
                      onPressed: (){},
                      child: new Container(
                        height: 50.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              child: new Text("210", style: new TextStyle(fontSize: 16.0, color: GlobalConfig.fontColor),),
                            ),
                            new Container(
                              child: new Text("attention", style: new TextStyle(fontSize: 12.0, color: GlobalConfig.fontColor),),
                            )
                          ],
                        ),
                      )
                  ),
                ),
                new Container(
                  height: 14.0,
                  width: 1.0,
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(
                          start: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12, width: 1.0)
                      )
                  ),
                ),
                new Container(
                  width: (MediaQuery.of(context).size.width - 6.0) / 4,
                  child: new FlatButton(
                      onPressed: (){},
                      child: new Container(
                        height: 50.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              child: new Text("18", style: new TextStyle(fontSize: 16.0, color: GlobalConfig.fontColor),),
                            ),
                            new Container(
                              child: new Text("my collection", style: new TextStyle(fontSize: 12.0, color: GlobalConfig.fontColor),),
                            )
                          ],
                        ),
                      )
                  ),
                ),
                new Container(
                  height: 14.0,
                  width: 1.0,
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(
                          start: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12, width: 1.0)
                      )
                  ),
                ),
                new Container(
                    width: (MediaQuery.of(context).size.width - 6.0) / 4,
                    child: new FlatButton(
                        onPressed: (){},
                        child: new Container(
                          height: 50.0,
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                child: new Text("33", style: new TextStyle(fontSize: 16.0, color: GlobalConfig.fontColor),),
                              ),
                              new Container(
                                child: new Text("Recently Viewed", style: new TextStyle(fontSize: 12.0, color: GlobalConfig.fontColor),),
                              )
                            ],
                          ),
                        )
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}