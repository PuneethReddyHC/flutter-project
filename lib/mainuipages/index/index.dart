import 'package:flutter/material.dart';
import 'navigation_icon_view.dart';
import '../global_config.dart';
import '../home/home_page.dart';
import '../idea/main.dart';
import '../market/main.dart';
import '../my/my_page.dart';
import '../notice/main.dart';
import '../../scopedmodel/main.dart';


class Index extends StatefulWidget {
  final MainModel model;
  Index(this.model);
  @override
  State<Index> createState() => new _IndexState(this.model);
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  final MainModel model;
  _IndexState(this.model);
  
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatelessWidget> _pageList;
  StatelessWidget _currentPage;

  @override
  void initState() {
    super.initState();

    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text("Home"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.all_inclusive),
        title: new Text("idea"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_shopping_cart),
        title: new Text("market"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_alert),
        title: new Text("Notice"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.perm_identity),
        title: new Text("mine"),
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatelessWidget>[
      new HomePage(model),
      new IdeaPage(),
      new MarketPage(),
      new NoticePage(),
      new MyPage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }


  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items: _navigationViews
            .map((NavigationIconView navigationIconView) =>
                navigationIconView.item)
            .toList(),
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _navigationViews[_currentIndex].controller.reverse();
            _currentIndex = index;
            _navigationViews[_currentIndex].controller.forward();
            _currentPage = _pageList[_currentIndex];
          });
        });

    return new MaterialApp(

        home:new Scaffold(
            body: new Center(child: _currentPage),
            bottomNavigationBar: bottomNavigationBar,
          ),
        theme: GlobalConfig.themeData

    );
  }
}
