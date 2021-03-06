import 'package:flutter/material.dart';

class KCDiscoverChildPage extends StatelessWidget {

  final String tittle;
  KCDiscoverChildPage({this.tittle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
      ),
      body: Center(
        child: Text(tittle),
      ),
    );
  }
}
