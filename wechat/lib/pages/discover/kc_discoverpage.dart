import 'package:flutter/material.dart';
import 'package:wecaht/pages/discover/kc_discover_cell.dart';

class KCDiscoverPage extends StatefulWidget {
  @override
  _KCDiscoverPageState createState() => _KCDiscoverPageState();
}

class _KCDiscoverPageState extends State<KCDiscoverPage> {
  Color _themeColor = Color.fromRGBO(220, 220, 220, 1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColor,
        centerTitle: true,
        elevation: 0.0,
        title: Text('发现'),
      ),
      body: Container(
        color: _themeColor,
        child: ListView(
          children: <Widget>[
            KCDiscoverCell(
              imageName: 'images/朋友圈.png',
              title: '朋友圈',
              linetype: '1',
            ),
            KCDiscoverCell(
              imageName: 'images/扫一扫.png',
              title: '扫一扫',
              linetype: '1',
            ),
            KCDiscoverCell(
              imageName: 'images/摇一摇.png',
              title: '摇一摇',
            ),
            KCDiscoverCell(
              imageName: 'images/看一看.png',
              title: '看一看',
            ),
            KCDiscoverCell(
              imageName: 'images/搜一搜.png',
              title: '搜一搜',
              linetype: '1',
            ),
            KCDiscoverCell(
              imageName: 'images/附近的人.png',
              title: '附近的人',
              linetype: '1',
            ),
            KCDiscoverCell(
              imageName: 'images/购物.png',
              title: '购物',
              subTitle: '618限时特价',
              subImageName: 'images/badge.png',
            ),
            KCDiscoverCell(
              imageName: 'images/游戏.png',
              title: '游戏',
              linetype: '1',
            ),
            KCDiscoverCell(
              imageName: 'images/小程序.png',
              title: '小程序',
            ),
          ],
        ),
      ),
    );
  }
}
