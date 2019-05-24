import 'package:flutter/material.dart';
import '../global_config.dart';


class MarketPage extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(

          body: new Container(
            child: AppBar(
              title: Text('market page'),
            ),
          ),
        ),
        theme: GlobalConfig.themeData
    );
  }

}
