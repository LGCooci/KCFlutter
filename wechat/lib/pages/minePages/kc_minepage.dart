import 'package:flutter/material.dart';
import 'package:wecaht/pages/discover/kc_discover_cell.dart';
import 'package:wecaht/pages/minePages/kc_mine_detailpage.dart';

class KCMinePage extends StatefulWidget {
  @override
  _KCMinePageState createState() => _KCMinePageState();
}

class _KCMinePageState extends State<KCMinePage> {

  // 头部试图
  Widget headerWidget(){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) =>
                KCMineDetailPage()));
      },
      child:  Container(
        color: Colors.white,
        height: 200,
        child: Container(
          margin: EdgeInsets.only(top: 100, bottom: 20),
          child: Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage('images/cooci.png'),
                    ),
                  ),
                ),// 头像
                Container(
                    width: MediaQuery.of(context).size.width - 90,
                    margin: EdgeInsets.only(left: 10,top: 5,right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Cooci',
                            style: TextStyle(fontSize: 20,color: Colors.black),
                          ),//昵称
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '微信号:  KC_Cooci',
                                style: TextStyle(fontSize: 14,color: Colors
                                    .grey),
                              ),//微信号
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Image(image: AssetImage('images/qrcode.png'),
                                      width: 15,),
                                    SizedBox(width: 20,),
                                    Image(image: AssetImage('images/icon_right.png'),width: 15,),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ), // 微信号 + 二维码 + 箭头
                        Container(
                          child: Image(image: AssetImage('images/add_status'
                              '.png'),width: 50,),
                        ), // + 状态
                      ],
                    )
                ), // 右边
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(220, 220, 220, 1),
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                children: <Widget>[
                  headerWidget(),
                  SizedBox(height: 10,),
                  KCDiscoverCell(title: '支付', imageName: 'images/微信支付.png',
                      linetype: '1'),
                  KCDiscoverCell(title: '收藏', imageName: 'images/微信收藏.png'),
                  KCDiscoverCell(title: '朋友圈', imageName: 'images/朋友圈.png'),
                  KCDiscoverCell(title: '卡包', imageName: 'images/微信卡包.png'),
                  KCDiscoverCell(title: '表情', imageName: 'images/微信表情.png',
                      linetype: '1'),
                  KCDiscoverCell(title: '设置', imageName: 'images/微信设置.png',linetype: '1'),
                ],
              ),
            )
          ),
        ],
      )
    );
  }
}
