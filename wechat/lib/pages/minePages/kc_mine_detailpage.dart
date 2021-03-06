import 'package:flutter/material.dart';
import 'package:wecaht/pages/discover/kc_discover_cell.dart';

class KCMineDetailPage extends StatelessWidget {
  Color _themeColor = Color.fromRGBO(220, 220, 220, 1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: _themeColor,
        centerTitle: true,
        elevation: 0.0,
        title: Text('个人信息',style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        color: Color.fromRGBO(220, 220, 220, 1),
        child: ListView(
          children: <Widget>[
            KCDiscoverCell(
              title: '头像',
              linetype: '1',
              subImageType: '2',
              subImageName: 'images/cooci.png',
            ),
            KCDiscoverCell(
              title: '名字',
              subTitle: 'Cooci',
            ),
            KCDiscoverCell(
              title: '拍一拍',
            ),
            KCDiscoverCell(
              title: '微信号',
              subTitle: 'KC_Cooci',
            ),
            KCDiscoverCell(
              title: '我的二维码',
              subImageType: '3',
              subImageName:'images/qrcode.png',
            ),
            KCDiscoverCell(
              title: '更多',
              linetype: '1',
            ),
            KCDiscoverCell(
              title: '微信豆',
              linetype: '1',
            ),
            KCDiscoverCell(
              title: '我的地址',
            ),
            KCDiscoverCell(
              title: '我的发票抬头',
              linetype: '1',
            ),
          ],
        ),
      ),
    );
  }
}
