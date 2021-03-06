
import 'package:flutter/material.dart';

class KCChatPage extends StatefulWidget {
  @override
  _KCChatPageState createState() => _KCChatPageState();
}

class _KCChatPageState extends State<KCChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
      ),
      body: Center(
        child: Text('微信'),
      ),
    );
  }
}
