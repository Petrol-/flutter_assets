import 'package:flutter/material.dart';
import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/core/stores/preference_store.dart';
import 'package:flutter_assets/features/splash/stores/splash_store.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SplashStore>(
            create: (_) => SplashStore(Provider.of<NavigationService>(context),
                Provider.of<PreferenceStore>(context))),
      ],
      child: Builder(
          builder: (context) => SplashPageContent(
              splashStore: Provider.of<SplashStore>(context))),
    );
  }
}

class SplashPageContent extends StatefulWidget {
  final SplashStore splashStore;

  const SplashPageContent({
    Key key,
    @required this.splashStore,
  }) : super(key: key);

  @override
  _SplashPageContentState createState() => _SplashPageContentState();
}

class _SplashPageContentState extends State<SplashPageContent> {
  @override
  void initState() {
    super.initState();
    widget.splashStore.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color.fromARGB(255, 145, 205, 181),
            child: Center(
                child: Text(
              "KEYS",
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
            ))));
  }
}
