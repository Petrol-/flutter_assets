import 'package:flutter/material.dart';
import 'package:flutter_assets/core/widgets/tab_page.dart';
import 'package:flutter_assets/features/home/home_page.dart';
import 'package:flutter_assets/features/main_skeleton/stores/main_skeleton_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          return MainSkeletonContent(store: Provider.of<MainSkeletonStore>(context));
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
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.building),
      title: Text("Adhérent"),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.toolbox),
      title: Text("Site"),
    ),
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.hdd),
      title: Text("Matériels"),
    ),
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.images),
      title: Text("Photos"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.exit_to_app),
      title: Text("Fin d'inter"),
    ),
  ];

  var _tabbedPages = <TabPage>[
    HomePage(
      title: "Adhérent",
      isInitialPage: true,
    ),
    HomePage(
      title: "Site",
    ),
    HomePage(title: "Matériels"),
    HomePage(title: "Photos"),
    HomePage(title: "Fin d'intervention"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
            currentIndex: widget.store.selectedPagePosition,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.green,
            onTap: (position) {
              _onTabPositionChanged(position);
            },
            items: _bottomNavItems);
      }),
      body: Observer(builder: (_) {
        return IndexedStack(index: widget.store.selectedPagePosition, children: _tabbedPages);
      }),
    );
  }

  TabPage _pageAt(int position) {
    return _tabbedPages.elementAt(position);
  }

  void _onTabPositionChanged(int position) {
    if (_isSamePage(position)) return;
    var oldPosition = widget.store.selectPage(position);
    _pageAt(oldPosition).onHide();
    _pageAt(position).onDisplay();
  }

  bool _isSamePage(position) {
    return position == widget.store.selectedPagePosition;
  }
}
