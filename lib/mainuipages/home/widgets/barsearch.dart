import 'package:flutter/material.dart';
import '../../../mainuipages/global_config.dart';
import '../../home/search_page.dart';
import '../search_page.dart';
import '../ask_page.dart';
class BarSearchPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Row(
          children: <Widget>[
            new Expanded(
                child: new FlatButton.icon(
                  onPressed: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) {
                          return new SearchPage();
                        }
                    ));
                  },
                  icon: new Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 16.0
                  ),
                  label: new Text(
                    "search the content",
                    style: new TextStyle(color: Colors.black54),
                  ),
                )
            ),
            new Container(
              decoration: new BoxDecoration(
                  border: new BorderDirectional(
                      start: new BorderSide(color: GlobalConfig.fontColor, width: 1.0)
                  )
              ),
              height: 14.0,
              width: 1.0,
            ),
            new Container(
                child: new FlatButton.icon(
                  onPressed: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) {
                          return new AskPage();
                        }
                    ));
                  },
                  icon: new Icon(
                      Icons.border_color,
                      color: Colors.black54,
                      size: 14.0
                  ),
                  label: new Text(
                    "Ask a question",
                    style: new TextStyle(color: Colors.black54),
                  ),
                )
            )
          ],
        ),
        decoration: new BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
          color: GlobalConfig.searchBackgroundColor,
        )
    );
  }
}