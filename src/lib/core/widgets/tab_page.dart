import 'package:flutter/material.dart';

class TabChanger {
  CustomTab _listener;
  void register(CustomTab listener) {
    _listener = listener;
  }

  void removeListener() {
    _listener = null;
  }

  void onDisplay() {
    _listener?.onDisplay();
  }

  void onHide(){
    _listener?.onHide();
  }
}

abstract class TabPage extends StatelessWidget implements CustomTab {
  final TabChanger tabChanger = new TabChanger();

  TabPage({Key key}) : super(key: key);
}

abstract class CustomTab {
  void onDisplay();
  void onHide();
}