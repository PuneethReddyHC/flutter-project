import 'package:flutter/material.dart';
import '../global_config.dart';

class SearchPage extends StatefulWidget{
  @override
  SearchPageState createState() => new SearchPageState();
}

class SearchPageState extends State<SearchPage> {

  Widget searchInput() {
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
              autofocus: true,
              decoration: new InputDecoration.collapsed(
                  hintText: "Search the content",
                  hintStyle: new TextStyle(color: Colors.black54)
              ),
            ),
          )
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
          appBar: new AppBar(
            title: searchInput(),
          ),
          body: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new Text("Hot search", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  margin: const EdgeInsets.only(top: 16.0, left: 16.0, bottom: 16.0),
                  alignment: Alignment.topLeft,
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                      child: new Chip(
                        label: new FlatButton(onPressed: (){}, child: new Text("Car tariff reduction",style: new TextStyle(color: GlobalConfig.fontColor),)),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                    new Container(
                      child: new Chip(
                        label: new FlatButton(onPressed: (){}, child: new Text("Li Yanhong rumors",style: new TextStyle(color: GlobalConfig.fontColor))),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                      child: new Chip(
                        label: new FlatButton(onPressed: (){}, child: new Text("小米8",style: new TextStyle(color: GlobalConfig.fontColor))),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                    new Container(
                      child: new Chip(
                        label: new FlatButton(onPressed: (){}, child: new Text("Time-space cohabitation",style: new TextStyle(color: GlobalConfig.fontColor))),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
                new Container(
                  child: new Text("search history", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                  alignment: Alignment.topLeft,
                ),
                new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Icon(Icons.access_time, color: GlobalConfig.fontColor, size: 16.0),
                        margin: const EdgeInsets.only(right: 12.0),
                      ),
                      new Expanded(
                        child: new Container(
                          child: new Text("Amateur interest", style: new TextStyle( color: GlobalConfig.fontColor, fontSize: 14.0),),
                        ),
                      ),
                      new Container(
                        child: new Icon(Icons.clear, color: GlobalConfig.fontColor, size: 16.0),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                  padding: const EdgeInsets.only(bottom: 10.0),
                  decoration: new BoxDecoration(
                    border: new BorderDirectional(bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                  ),
                ),
                new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Icon(Icons.access_time, color: GlobalConfig.fontColor, size: 16.0),
                        margin: const EdgeInsets.only(right: 12.0),
                      ),
                      new Expanded(
                        child: new Container(
                          child: new Text("Three-body", style: new TextStyle( color: GlobalConfig.fontColor, fontSize: 14.0),),
                        ),
                      ),
                      new Container(
                        child: new Icon(Icons.clear, color: GlobalConfig.fontColor, size: 16.0),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                  padding: const EdgeInsets.only(bottom: 10.0),
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                  ),
                ),
                new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Icon(Icons.access_time, color: GlobalConfig.fontColor, size: 16.0),
                        margin: const EdgeInsets.only(right: 12.0),
                      ),
                      new Expanded(
                        child: new Container(
                          child: new Text("Human future", style: new TextStyle( color: GlobalConfig.fontColor, fontSize: 14.0),),
                        ),
                      ),
                      new Container(
                        child: new Icon(Icons.clear, color: GlobalConfig.fontColor, size: 16.0),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                  padding: const EdgeInsets.only(bottom: 10.0),
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                  ),
                ),
              ],
            ),
          )
        )
    );
  }
}