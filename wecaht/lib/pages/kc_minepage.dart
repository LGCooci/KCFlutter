import 'package:flutter/material.dart';

class KCMinePage extends StatefulWidget {
  @override
  _KCMinePageState createState() => _KCMinePageState();
}

class _KCMinePageState extends State<KCMinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我'),
      ),
      body: Center(
        child: Text('我'),
      ),
    );
  }
}
