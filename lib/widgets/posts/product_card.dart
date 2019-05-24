import 'package:flutter/material.dart';


import '../../models/attributes.dart';

import '../../mainuipages/global_config.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);


  Widget wordsCard() {
    Widget markWidget;
    if (product.image == null) {
      markWidget = new Text(
          product.id,
          style: new TextStyle(height: 1.3, color: GlobalConfig.fontColor)
      );
    } else {
      markWidget = new Row(
        children: <Widget>[
          new Expanded(
            flex: 2,
            child: new Container(
              child: new Text(
                  product.title,
                  style: new TextStyle(height: 1.3, color: GlobalConfig.fontColor)
              ),
            ),
          ),
          new Expanded(
              flex: 1,
              child: new AspectRatio(
                  aspectRatio: 3.0 / 2.0,
                  child: new Container(
                    foregroundDecoration:new BoxDecoration(
                        image: new DecorationImage(
                          image: new NetworkImage(product.image),
                          centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                        ),
                        borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                    ),
                  )
              )
          ),
        ],
      );
    }
    return new Container(
        color: GlobalConfig.cardBackgroundColor,
        margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: new FlatButton(
          onPressed: (){


          },
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new CircleAvatar(
                          backgroundImage: new NetworkImage(product.imagePath),
                          radius: 11.0
                      ),
                    ),
                    new Text("  " + product.id + " " + product.title + " · " + '12 hours', style: new TextStyle(color: GlobalConfig.fontColor))
                  ],
                ),
                padding: const EdgeInsets.only(top: 10.0),
              ),
              new Container(
                  child: new Text(
                      product.title,
                      style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, height: 1.3, color: GlobalConfig.dark == true? Colors.white70 : Colors.black)
                  ),
                  margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                  alignment: Alignment.topLeft
              ),
              new Container(
                  child: markWidget,
                  margin: new EdgeInsets.only(top: 6.0),
                  alignment: Alignment.topLeft
              ),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text(product.price.toString() + " Agree " + product.price.toString() + "comment", style: new TextStyle(color: GlobalConfig.fontColor))
                    ),
                    new PopupMenuButton(
                        icon: new Icon(Icons.linear_scale, color: Colors.white10,),
                        itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                          new PopupMenuItem<String>(
                              value: 'The value of option one',
                              child: new Text('Block this problem')
                          ),
                          new PopupMenuItem<String>(
                              value: 'The value of option two',
                              child: new Text('unsubscribe learner')
                          ),
                          new PopupMenuItem<String>(
                              value: 'The value of option two',
                              child: new Text("Report")
                          )
                        ]
                    )
                  ],
                ),
                padding: const EdgeInsets.only(),
              )
            ],
          ),
        )
    );
  }



  @override
  Widget build(BuildContext context) {
    return wordsCard();
  }
}
