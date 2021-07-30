import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatefulWidget {
  final Widget child;

  DetailCard({Key? key, required this.child}) : super(key: key);

  @override
  _DetailCardState createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: <Widget>[
              Card(
                child: widget.child,
              )
            ])));
  }
}
