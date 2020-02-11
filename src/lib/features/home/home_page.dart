import 'package:flutter/material.dart';
import 'package:flutter_assets/features/home/stores/home_store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider(
        create: (_) => HomeStore(),
      )
    ], child: Builder(builder: (context) => HomePageContent()));
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent({
    Key key,
  }) : super(key: key);

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
    return Container(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
