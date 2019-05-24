import 'package:flutter/material.dart';
import './authpages/main.dart';
import './onboarding/onboard.dart';

import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';
import './scopedmodel/main.dart';

import './mainuipages/index/index.dart';
import './mainuipages/pages/products_admin.dart';
import './mainuipages/pages/products.dart';

import './widgets/helpers/custom_route.dart';

import 'models/attributes.dart';
import './mainuipages/home/product.dart';
import './mainuipages/pages/product_edit.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);


  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  @override
  final MainModel _model = MainModel();
  bool _isAuthenticated = false;

  @override
  void initState() {
    _model.autoAuthenticate();
    _model.userSubject.listen((bool isAuthenticated) {
      setState(() {
        _isAuthenticated = isAuthenticated;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: _model,
      child: MaterialApp(

        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.deepPurple,
            buttonColor: Colors.deepPurple),
        routes: {
          '/': (BuildContext context) =>!_isAuthenticated ? OnBoard() :Index(_model),
          '/login': (BuildContext context) => Login(),
          '/admin':(BuildContext context) =>
          !_isAuthenticated ? Login() : ProductsAdminPage(_model),
          '/post':(BuildContext context) =>
          !_isAuthenticated ? Login() : ProductEditPage(),
        },
        onGenerateRoute: (RouteSettings settings) {

          if (!_isAuthenticated) {
            return MaterialPageRoute<bool>(
              builder: (BuildContext context) => Login(),
            );
          }
          final List<String> pathElements = settings.name.split('/');
          print('on generate routes '+ pathElements[0] +' '+ pathElements[1]);
          if (pathElements[0] != '') {
            print('on generate routes Null[0]');
            return null;

          }
          if (pathElements[1] == 'product') {
            print('on generate routes [2]'+pathElements[2]);
            final String productId = pathElements[2];
            final Product product =
            _model.allProducts.firstWhere((Product product) {

              return product.id == productId;
            });
            print(product.title);
            return CustomRoute<bool>(

              builder: (BuildContext context) =>
              !_isAuthenticated ? Login() : ProductPage(product),

            );
          }
          return null;
        },
        onUnknownRoute: (RouteSettings settings) {
          print('on unknown routes');
          return MaterialPageRoute(
              builder: (BuildContext context) =>
              !_isAuthenticated ? Login() : ProductsPage(_model));
        },
      ),

    );
  }
}
