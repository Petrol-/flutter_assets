import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({Key key, @required this.child}) : super(key: key);
  final TabbedPage child;
  @override
  Widget build(BuildContext context) {
    return child;
  }
}

abstract class TabbedPage extends Widget {
  void onDisplay();
  void onHide();
}