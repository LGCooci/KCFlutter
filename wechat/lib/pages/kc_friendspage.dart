import 'package:flutter/material.dart';

class KCFriendsPage extends StatefulWidget {
  @override
  _KCFriendsPageState createState() => _KCFriendsPageState();
}

class _KCFriendsPageState extends State<KCFriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通讯录'),
      ),
      body: Center(
        child: Text('通讯录'),
      ),
    );
  }
}
