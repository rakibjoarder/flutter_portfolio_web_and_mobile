import 'package:flutter/material.dart';
import 'dart:html' as html;
class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
        child: child,
      ),
    );
  }
}

launchURL(link) async {
  html.window.open(link,'_blank');
}

