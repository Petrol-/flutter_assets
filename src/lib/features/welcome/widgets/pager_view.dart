import 'package:flutter/material.dart';

class PagerView extends StatelessWidget {
  const PagerView(
      {Key key,
      @required Widget image,
      @required Widget title,
      @required String text})
      : this._image = image,
        this._title = title,
        this._text = text,
        super(key: key);

  final Widget _image;
  final Widget _title;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: _image,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: _title),
            Text(_text,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
