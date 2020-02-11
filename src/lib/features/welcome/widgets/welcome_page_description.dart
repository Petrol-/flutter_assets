import 'package:flutter/material.dart';
import 'package:flutter_assets/features/welcome/widgets/pager_view.dart';

class WelcomePageDescription extends StatelessWidget {
  const WelcomePageDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagerView(
        image: Icon(
          Icons.tab,
          size: 200,
        ),
        title: Text(
          "Welcome",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        text:
            'KEYS, a great app that will help you doing nothing. You should try it.');
  }
}
