import 'package:flutter/material.dart';
import 'package:flutter_assets/features/main_skeleton/stores/main_skeleton_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class MainSkeletonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider(
            create: (_) => MainSkeletonStore(),
          )
        ],
        child: Builder(builder: (context) {
          return MainSkeletonContent(
              store: Provider.of<MainSkeletonStore>(context));
        }));
  }
}

class MainSkeletonContent extends StatefulWidget {
  const MainSkeletonContent({
    Key key,
    @required this.store,
  }) : super(key: key);
  final MainSkeletonStore store;

  @override
  _MainSkeletonContentState createState() => _MainSkeletonContentState();
}

class _MainSkeletonContentState extends State<MainSkeletonContent> {
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
  var _tabPages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
            currentIndex: widget.store.selectedPagePosition,
            selectedItemColor: Colors.red,
            backgroundColor: Colors.white,
            onTap: (position) {
              _onTabPositionChanged(position);
            },
            items: _bottomNavItems);
      }),
      body: Observer(builder: (_) {
        return IndexedStack(
            index: widget.store.selectedPagePosition, children: _tabPages);
      }),
    );
  }

  void _onTabPositionChanged(int position) {
    var oldPosition = widget.store.selectPage(position);
    // _tabbedPages.elementAt(oldPosition).onHide();
    //  _tabbedPages.elementAt(position).onDisplay();
  }
}
