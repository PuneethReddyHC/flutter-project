import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import './wordscard.dart';
import '../../../models/attributes.dart';
import '../../../scopedmodel/main.dart';

class Products extends StatelessWidget {


  Widget _buildProductList(List<Product> products) {
    Widget productCards;

    if (products.length > 0) {
      productCards = ListView.builder(
        
        itemBuilder: (BuildContext context, int index) =>
            WordsCards(products[index]),
        itemCount: products.length,
      );
    } else {
      productCards = ListView.builder(

        itemBuilder: (BuildContext context, int index) =>
            Container(),
        itemCount: products.length,
      );
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {

    return ScopedModelDescendant<MainModel>(builder: (BuildContext context, Widget child, MainModel model) {

      return  _buildProductList(model.displayedProducts);
    },);
  }
}
