import 'package:flutter/material.dart';
import '../global_config.dart';
import './widgets/barsearch.dart';
import './widgets/ideacard.dart';
import './widgets/infocard.dart';
import './widgets/servicecard.dart';
import './widgets/settingcard.dart';
import './widgets/videocard.dart';

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: new AppBar(
          title: BarSearchPage(),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            child: new Column(
              children: <Widget>[
                InfoCard(),
                ServiceCard(),
                SettingCard(),
                VideoCard(),
                IdeaCard()
              ],
            ),
          ),
        )
      ),
    );
  }

}