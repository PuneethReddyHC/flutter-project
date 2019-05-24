import 'package:flutter/material.dart';
import '../../../mainuipages/global_config.dart';


class SettingCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingState();
  }
}
class _SettingState extends State<SettingCard>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            width: MediaQuery.of(context).size.width / 4,
            child: new FlatButton(
                onPressed: (){},
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(bottom: 6.0),
                        child: new CircleAvatar(
                          radius: 20.0,
                          child: new Icon(Icons.invert_colors, color: Colors.white),
                          backgroundColor: new Color(0xFFB88800),
                        ),
                      ),
                      new Container(
                        child: new Text("Community Building", style: new TextStyle(color: GlobalConfig.fontColor, fontSize: 14.0)),
                      )
                    ],
                  ),
                )
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width / 4,
            child: new FlatButton(
                onPressed: () => {},
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(bottom: 6.0),
                        child: new CircleAvatar(
                          radius: 20.0,
                          child: new Icon(Icons.golf_course, color: Colors.white),
                          backgroundColor: new Color(0xFF63616D),
                        ),
                      ),
                      new Container(
                        child: new Text("Feedback", style: new TextStyle(color: GlobalConfig.fontColor, fontSize: 14.0,)),
                      )
                    ],
                  ),
                )
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width / 4,
            child: new FlatButton(
                onPressed: (){
                  setState((){
                    if (GlobalConfig.dark == true) {
                      GlobalConfig.themeData = new ThemeData(
                        primaryColor: Colors.cyan,
                        scaffoldBackgroundColor: new Color(0xFFEBEBEB),
                      );
                      GlobalConfig.searchBackgroundColor = new Color(0xFFEBEBEB);
                      GlobalConfig.cardBackgroundColor = Colors.white;
                      GlobalConfig.fontColor = Colors.black54;
                      GlobalConfig.dark = false;
                    } else {
                      GlobalConfig.themeData = new ThemeData.dark();
                      GlobalConfig.searchBackgroundColor = Colors.white10;
                      GlobalConfig.cardBackgroundColor = new Color(0xFF222222);
                      GlobalConfig.fontColor = Colors.white30;
                      GlobalConfig.dark = true;
                    }
                  });
                },
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(bottom: 6.0),
                        child: new CircleAvatar(
                          radius: 20.0,
                          child: new Icon(GlobalConfig.dark == true ? Icons.wb_sunny : Icons.brightness_2, color: Colors.white),
                          backgroundColor: new Color(0xFFB86A0D),
                        ),
                      ),
                      new Container(
                        child: new Text(GlobalConfig.dark == true ? "Day mode" : "Night mode", style: new TextStyle(color: GlobalConfig.fontColor, fontSize: 14.0)),
                      )
                    ],
                  ),
                )
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width / 4,
            child: new FlatButton(
                onPressed: (){},
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(bottom: 6.0),
                        child: new CircleAvatar(
                          radius: 20.0,
                          child: new Icon(Icons.perm_data_setting, color: Colors.white),
                          backgroundColor: new Color(0xFF636269),
                        ),
                      ),
                      new Container(
                        child: new Text("Setting", style: new TextStyle(color: GlobalConfig.fontColor, fontSize: 14.0)),
                      )
                    ],
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}