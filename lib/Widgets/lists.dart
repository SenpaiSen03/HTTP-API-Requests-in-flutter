import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Widget child;

  AppCard({Key? key, required this.child}) : super(key: key);

  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
            margin: EdgeInsets.all(10),
            color: Colors.grey[350],
            child: Container(
              child: widget.child,
            )));
  }
}
