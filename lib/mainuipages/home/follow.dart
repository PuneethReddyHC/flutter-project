import 'package:flutter/material.dart';

import './widgets/products.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scopedmodel/main.dart';
import '../../CheckConectivity.dart';


class Follow extends StatefulWidget {
  final MainModel model;

  Follow(this.model,{Key key}):super(key: key);

  @override
  State<StatefulWidget> createState() {

    return _FollowState();
  }
}

class _FollowState extends State<Follow> {



  ConnectionStatusSingleton connectionStatus = ConnectionStatusSingleton.getInstance();

  bool isOffline = true;

  @override
  initState() {

    super.initState();
    widget.model.fetchProducts();
    connectionStatus.checkConnection().then((hasconnection) {
      isOffline = !hasconnection;

      // Do something else...
    });

  }
  void _checkConn(){
    setState(() {
      connectionStatus.checkConnection().then((hascon) {
        isOffline = !hascon;
        if(!isOffline){
          Navigator.of(context).pushReplacementNamed('/');
        }
      });
    });
  }
  Widget _buildProductsList() {
    return ScopedModelDescendant(
      builder: (BuildContext context, Widget child, MainModel model) {
        Widget content =
              Container(child: Center(child: Text('products not found'),));
        if(isOffline){
          content =Center(child:Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[Text('No Network Connection'),SizedBox(height: 20),RaisedButton(onPressed:()=>_checkConn(),
                child: Text("Retry"))],));
        }

        if (model.displayedProducts.length > 0 && !model.isLoading) {
          content = Products();

        } else if (model.isLoading) {
          content = Center(child: SizedBox(
            child: CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(
                  Colors.purpleAccent),
              strokeWidth: 4.0,
            ),
            height: 25.0,
            width: 25.0,
          ),);
        }
        return RefreshIndicator(
          onRefresh: model.fetchProducts,
          child: content,
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {

    return new Container(
      margin: const EdgeInsets.only(top: 5.0),
      child:_buildProductsList(),
    );
  }
}
