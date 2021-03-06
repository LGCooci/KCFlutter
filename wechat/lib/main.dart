import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wecaht/kc_rootpage.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KCRootPage(),
    );
  }
}
