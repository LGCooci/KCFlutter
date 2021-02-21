import 'package:flutter/material.dart';
import 'package:wecaht/kc_rootpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeChat',
      theme: ThemeData(
        highlightColor: Color.fromARGB(1, 0, 0, 0),
        splashColor: Color.fromARGB(1, 0, 0, 0),
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KCRootPage(),
    );
  }
}
