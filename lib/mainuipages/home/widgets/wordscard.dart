import 'package:flutter/material.dart';
import '../../global_config.dart';
import '../../../models/attributes.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../../scopedmodel/main.dart';
import '../product.dart';

class WordsCards extends StatelessWidget {
  final Product product;

  WordsCards(this.product);


  Widget billboard(context) {
    return new ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return Container(
        margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        color: GlobalConfig.cardBackgroundColor,
        child: new FlatButton(
          onPressed: () {
            model.selectProduct(product.id);
            String prodid=product.id;
            Product prod= model.allProducts.firstWhere((Product product) {
              return product.id==prodid;
            });
            Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context) => new ProductPage(prod)
                )
            );

          },
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new CircleAvatar(
                          backgroundImage: new NetworkImage(
                              "https://pic1.zhimg.com/50/v2-0c9de2012cc4c5e8b01657d96da35534_s.jpg"),
                          radius: 13.0),
                    ),
                    new Text('  ' + product.id + '  ' + '2 hours',
                        style: new TextStyle(color: GlobalConfig.fontColor))
                  ],
                ),
                padding: const EdgeInsets.only(top: 10.0),
              ),
              new Container(
                  child: new Text(product.title,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          height: 1.3,
                          color: GlobalConfig.dark == true
                              ? Colors.white70
                              : Colors.black)),
                  margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                  alignment: Alignment.topLeft),
              new Container(
                  child: new AspectRatio(
                      aspectRatio: 1.7 / 1.0,
                      child: new Container(
                        child: Hero(
                          tag: product.id,
                          child: FadeInImage(
                            placeholder: const AssetImage('assets/food.jpg'),
                            image: NetworkImage(product.image),
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 556,
                          ),
                        ),
                      )),
                  margin: new EdgeInsets.only(top: 6.0, bottom: 14.0),
                  alignment: Alignment.topLeft),
              new Container(
                  child: new Text(
                      "Still envious of the good work of others? Receive a free Certified Public Accountant course worth 1980 to charge yourself!",
                      style: new TextStyle(
                          height: 1.3, color: GlobalConfig.fontColor)),
                  padding: const EdgeInsets.only(bottom: 8.0)),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                        child: new Text("advertising",
                            style: new TextStyle(
                                fontSize: 10.0, color: GlobalConfig.fontColor)),
                        decoration: new BoxDecoration(
                          border: new Border.all(color: GlobalConfig.fontColor),
                          borderRadius:
                              new BorderRadius.all(const Radius.circular(2.0)),
                        ),
                        padding: const EdgeInsets.only(
                            top: 2.0, bottom: 2.0, left: 3.0, right: 3.0)),
                    new Expanded(
                        child: new Text(" see details",
                            style:
                                new TextStyle(color: GlobalConfig.fontColor))),
                    new IconButton(
                      icon: Icon(Icons.share),
                      color: GlobalConfig.fontColor,
                      onPressed: () {
                        model.selectProduct(product.id);
                      },
                    ),
                    new IconButton(
                      icon: Icon(Icons.comment),
                      color: GlobalConfig.fontColor,
                      onPressed: () {
                        model.selectProduct(product.id);
                      },
                    ),
                    new IconButton(
                      icon: Icon(product.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border),
                      color: product.isFavorite
                          ? Colors.redAccent[200]
                          : GlobalConfig.fontColor,
                      onPressed: () {
                        model.selectProduct(product.id);
                        model.toggleProductFavoriteStatus();
                      },
                    ),
                    new PopupMenuButton(
                        icon: new Icon(
                          Icons.linear_scale,
                          color: Colors.white10,
                        ),
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuItem<String>>[
                              new PopupMenuItem<String>(
                                  value: 'The value of option one',
                                  child: new Text('Block this problem')),
                              new PopupMenuItem<String>(
                                  value: 'The value of option two',
                                  child: new Text('unsubscribe learner')),
                              new PopupMenuItem<String>(
                                  value: 'The value of option two',
                                  child: new Text("Report"))
                            ])
                  ],
                ),
                padding: const EdgeInsets.only(bottom: 10.0),
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return billboard(context);
  }
}
