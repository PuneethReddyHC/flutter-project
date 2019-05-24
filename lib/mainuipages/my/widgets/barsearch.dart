import 'package:flutter/material.dart';
import '../../../mainuipages/global_config.dart';
import '../../home/search_page.dart';

class BarSearchPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Container(
          child: new FlatButton(
              onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) {
                      return new SearchPage();
                    }
                ));
              },
              child: new Row(
                children: <Widget>[
                  new Container(
                    child: new Icon(Icons.search, size: 18.0,color: Colors.black54,),
                    margin: const EdgeInsets.only(right: 26.0),
                  ),
                  new Expanded(
                      child: new Container(
                        child: new Text("Search for content",style: TextStyle(color: Colors.black54),),
                      )
                  ),
                  new Container(
                    child: new FlatButton(
                      onPressed: (){},
                      child: new Icon(Icons.settings_overscan, size: 18.0,color: Colors.black54,),
                    ),
                    width: 40.0,
                  ),
                ],
              )
          ),
          decoration: new BoxDecoration(
              borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
              color: GlobalConfig.searchBackgroundColor
          )
      );
  }
}