import 'package:flutter/material.dart';
import '../global_config.dart';
import 'follow.dart';
import 'recommend.dart';
import 'hot.dart';
import 'widgets/barsearch.dart';
import '../../scopedmodel/main.dart';
import './widgets/product_fab.dart';
class HomePage extends StatelessWidget {
  final MainModel model;
  HomePage(this.model);



  @override
  Widget build(BuildContext context) {
    return  new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            title: BarSearchPage(),
            bottom: new TabBar(
              labelColor: GlobalConfig.dark == true ? new Color(0xFF63FDD9) : Colors.blue,
              unselectedLabelColor: GlobalConfig.dark == true ? Colors.white : Colors.black,
              tabs: [
                new Tab(text: "attention"),
                new Tab(text: "recommend"),
                new Tab(text: "Hot list"),
              ],
            ),
          ),
          body: new TabBarView(
              children: [
                new Follow(model),
                new Recommend(),
                new Hot()
              ]
          ),
          floatingActionButton: ProductFAB(),
        ),

    );
  }

}