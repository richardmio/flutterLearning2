import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return PageView(
            children: <Widget>[
                Container(
                    color: Colors.amber
                ),
                Container(
                    color: Colors.green
                ),
                Container(
                    color: Colors.red
                )
            ],
            scrollDirection: Axis.vertical,
        );
    }
}