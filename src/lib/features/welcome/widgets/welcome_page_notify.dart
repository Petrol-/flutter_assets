import 'package:flutter/material.dart';
import 'package:flutter_assets/features/welcome/widgets/pager_view.dart';

class WelcomePageNotify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PagerView(
        image: Icon(Icons.notifications, size: 200),
        title: Text("Be notified",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        text:
            'You can activate or deactivate push notification from the home page of your app.');
  }
}
