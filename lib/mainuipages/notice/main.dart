import 'package:flutter/material.dart';

import '../global_config.dart';


class NoticePage extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        home: new Scaffold(
            body: new AppBar(

              title: Text('notice page'),

            )
        ),
        theme: GlobalConfig.themeData
    );
  }
}


