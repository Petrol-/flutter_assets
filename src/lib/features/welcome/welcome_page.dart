import 'package:flutter/material.dart';
import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/features/welcome/stores/welcome_store.dart';
import 'package:flutter_assets/features/welcome/widgets/welcome_page_consult.dart';
import 'package:flutter_assets/features/welcome/widgets/welcome_page_description.dart';
import 'package:flutter_assets/features/welcome/widgets/welcome_page_notify.dart';
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
    return Scaffold(
      body: Container(
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
            ),
            PositionnedConnectButton(
              onClick: () => this.widget._store.goToLoginPage(),
            )
          ]),
        ),
      ),
    );
  }
}

class PositionnedConnectButton extends StatelessWidget {
  const PositionnedConnectButton({
    Key key,
    @required VoidCallback onClick,
  })  : _onClick = onClick,
        super(key: key);

  final VoidCallback _onClick;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: FlatButton(
          onPressed: _onClick,
          color: Colors.transparent,
          child: Text("SE CONNECTER >"),
        ),
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
    return SizedBox.expand(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
          heightFactor: 0.30,
          child: Align(
            alignment: Alignment.topCenter,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: _dotCount,
              effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: Colors.white,
                  activeDotColor: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
