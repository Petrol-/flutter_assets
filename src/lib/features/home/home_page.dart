import 'package:flutter/material.dart';
import 'package:flutter_assets/core/widgets/tab_page.dart';
import 'package:flutter_assets/features/home/stores/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomePage extends TabPage {
  HomePage({Key key, @required this.color, bool isInitialPage = false})
      : super(key: key, isInitialPage: isInitialPage);

  final Color color;

  @override
  void onDisplay() {
    tabChanger.onDisplay();
  }

  @override
  void onHide() {
    tabChanger.onHide();
  }

  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider(
            create: (_) => HomeStore(),
          ),
        ],
        child: Builder(builder: (context) {
          return HomePageContent(
              color: color,
              tabChanger: tabChanger,
              isInitialPage: isInitialPage,
              store: Provider.of<HomeStore>(context));
        }));
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent(
      {Key key,
      @required this.color,
      @required this.store,
      @required this.tabChanger,
      @required this.isInitialPage})
      : super(key: key);

  final HomeStore store;
  final Color color;
  final TabChanger tabChanger;
  final bool isInitialPage;

  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent>
    implements CustomTab {
  @override
  void initState() {
    super.initState();
    widget.tabChanger.register(this);
    if (widget.isInitialPage) {
      widget.store.load();
    }
  }

  @override
  void dispose() {
    widget.tabChanger.removeListener();
    super.dispose();
  }

  @override
  void onDisplay() {
    widget.store.load();
  }

  @override
  void onHide() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Observer(builder: (_) {
        return Center(child: Text('${widget.store.countLoaded}'));
      }),
    );
  }
}
