import 'package:flutter/material.dart';
import 'package:flutter_assets/features/welcome/widgets/pager_view.dart';

class WelcomePageConsult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PagerView(
        image: Icon(Icons.web, size: 200),
        title: Text("Review and validate",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        text:
            "In this app, you can review informations about things. You can also validate awesome forms.");
  }
}
