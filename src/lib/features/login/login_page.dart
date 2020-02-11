import 'package:flutter/material.dart';
import 'package:flutter_assets/features/login/stores/login_store.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginStore>(
          create: (_) => LoginStore(),
        )
      ],
      child: Builder(
          builder: (context) =>
              LoginPageContent(Provider.of<LoginStore>(context))),
    );
  }
}

class LoginPageContent extends StatefulWidget {
  const LoginPageContent(
    this.store, {
    Key key,
  }) : super(key: key);

  final LoginStore store;

  @override
  _LoginPageContentState createState() => _LoginPageContentState();
}

class _LoginPageContentState extends State<LoginPageContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Align(
                      alignment: Alignment.bottomLeft, child: Text("Connect")),
                ),
                Expanded(
                  child: Center(
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minWidth: double.infinity),
                      child: OutlineButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.play_arrow),
                          label: Text("Connect with Google")),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text("Conditions générales"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
