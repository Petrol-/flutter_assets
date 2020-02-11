import 'package:flutter/material.dart';
import 'package:flutter_assets/core/repositories/preference_repository.dart';
import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/core/services/preference_service.dart';
import 'package:flutter_assets/features/splash/splash_page.dart';
import 'package:flutter_assets/router.dart';
import 'package:flutter_assets/routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<PreferenceRepository>(create: (_) => PreferenceRepository()),
          Provider<NavigationService>(create: (_) => NavigationService()),
          ProxyProvider<PreferenceRepository, PreferenceService>(
            update: (_, repository, __) => PreferenceService(repository),
          )
        ],
        child: Builder(
          builder: (context) => MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),
            navigatorKey: Provider.of<NavigationService>(context).navigatorKey,
            onGenerateRoute: Router.generateRoute,
            initialRoute: InitialRoute,
            home: SplashPage(),
          ),
        ));
  }
}
