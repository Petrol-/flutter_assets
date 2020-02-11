import 'package:flutter/material.dart';
import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/features/welcome/stores/welcome_store.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ProxyProvider<NavigationService, WelcomeStore>(
          update: (_, navService, __) => WelcomeStore(navService),
        )
      ],
      child: Builder(
          builder: (context) =>
              WelcomePageContent(Provider.of<WelcomeStore>(context))),
    );
  }
}

class WelcomePageContent extends StatefulWidget {
  final WelcomeStore _store;
  const WelcomePageContent(
    this._store, {
    Key key,
  }) : super(key: key);

  @override
  _WelcomePageContentState createState() => _WelcomePageContentState();
}

class _WelcomePageContentState extends State<WelcomePageContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 145, 205, 181),
    );
  }
}
