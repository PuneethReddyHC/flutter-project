import 'package:flutter/material.dart';
import '../global_config.dart';




class IdeaPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          body: new AppBar(

            title: Text('idea page'),

          )
        ),
        theme: GlobalConfig.themeData
    );
  }
}


