import 'package:flutter/material.dart';
import 'package:flutter_assets/core/widgets/tab_page.dart';
import 'package:flutter_assets/features/home/stores/home_store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget implements TabbedPage {
  HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider(
            create: (_) => HomeStore(),
          )
        ],
        child: Builder(builder: (context) {
          var homeStore = Provider.of<HomeStore>(context);
          return HomePageContent(store: homeStore);
        }));
  }

  @override
  void onDisplay() {
  }

  @override
  void onHide() {}
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

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
