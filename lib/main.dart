import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning2/pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter learning',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        backgroundColor: Colors.white,
      ),
      home: FrameWork(title: 'Flutter Learning Home Page'),
    );
  }
}

final _pageList = [
    HomePage(),
    HomePage(),
    HomePage(),
];

class FrameWork extends StatefulWidget {
    FrameWork({Key key, this.title}) : super(key: key);
    final String title;

    @override
    _FrameWorkState createState() => _FrameWorkState();

}

class _FrameWorkState extends State<FrameWork> {
    int _pageIdx = 0;

    void onTapped(int idx) {
        setState(() {
          _pageIdx = idx;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: _pageList[_pageIdx],
            bottomNavigationBar: BottomNavigationBar(
                onTap: onTapped,
                currentIndex: _pageIdx,
                items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        title: Text("home")
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.add_location),
                        title: Text("add")
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        title: Text("me")
                    ),
                ],
            ),
        );
    }
}