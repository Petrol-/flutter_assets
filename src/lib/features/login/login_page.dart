import 'package:flutter/material.dart';
import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/features/login/stores/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginStore>(
          create: (_) => LoginStore(Provider.of<NavigationService>(context)),
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
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Access the app",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      )),
                ),
                Expanded(
                  child: Center(
                    child: Observer(builder: (_) {
                      if (widget.store.isLoginIn)
                        return CircularProgressIndicator(
                          value: null,
                        );
                      return ConnectButton(
                        onClick: () {
                          widget.store.login();
                        },
                      );
                    }),
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

class ConnectButton extends StatelessWidget {
  const ConnectButton({
    Key key,
    @required this.onClick,
  }) : super(key: key);

  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: OutlineButton.icon(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          onPressed: onClick,
          icon: Icon(Icons.play_arrow),
          label: Text("Connect with Google")),
    );
  }
}
