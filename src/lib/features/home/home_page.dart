import 'package:flutter/material.dart';
import 'package:flutter_assets/features/home/stores/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider(
            create: (_) => HomeStore(),
          )
        ],
        child: Builder(
            builder: (context) =>
                HomePageContent(store: Provider.of<HomeStore>(context))));
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent({
    Key key,
    @required this.store,
  }) : super(key: key);

  final HomeStore store;
  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  void initState() {
    super.initState();
  }

  var _bottomNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
    BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        title: Text(
          "Notifications",
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Observer(builder: (_) {
          return BottomNavigationBar(
              currentIndex: widget.store.selectedPagePosition,
              selectedItemColor: Colors.red,
              backgroundColor: Colors.white,
              onTap: (position) => widget.store.selectPage(position),
              items: _bottomNavItems);
        }),
        body: Container(
          child: Container(
            color: Colors.red,
          ),
        ));
  }
}
