import 'package:flutter/material.dart';
import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/features/welcome/stores/welcome_page_consult.dart';
import 'package:flutter_assets/features/welcome/stores/welcome_store.dart';
import 'package:flutter_assets/features/welcome/welcome_page_description.dart';
import 'package:flutter_assets/features/welcome/welcome_page_notify.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
  final _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 145, 205, 181),
      child: SafeArea(
        child: Stack(children: <Widget>[
          PageView(
            children: <Widget>[
              WelcomePageDescription(),
              WelcomePageConsult(),
              WelcomePageNotify()
            ],
            controller: _pageController,
          ),
          PositionnedDotIndicator(
            pageController: _pageController,
            dotCount: 3,
          )
        ]),
      ),
    );
  }
}

class PositionnedDotIndicator extends StatelessWidget {
  const PositionnedDotIndicator(
      {Key key,
      @required PageController pageController,
      @required int dotCount})
      : _pageController = pageController,
        _dotCount = dotCount,
        super(key: key);

  final PageController _pageController;
  final int _dotCount;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
          heightFactor: 0.30,
          child: Align(
            alignment: Alignment.topCenter,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: _dotCount,
              effect: WormEffect(dotHeight: 10, dotWidth: 10),
            ),
          ),
        ),
      ),
    );
  }
}
