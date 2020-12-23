import 'package:flutter/material.dart';
import 'KCWidget.dart';


class KCBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // 类似 nav
        appBar: AppBar(
          // 导航栏
          title: Text(
            'KCFlutterBar',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: KCWidget(),
        floatingActionButton: FloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      ),
      theme: ThemeData(primaryColor: Colors.orange),
    );
  }
}


