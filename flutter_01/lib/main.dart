// 导入系统包 : 作用类似 #import <UIKit/UIKit.h>
import 'package:flutter/material.dart';
import 'package:flutter_01/KCListViewDemo.dart';
import 'KCBar.dart';
import 'KCBaseWidget.dart';
import 'KCWidget.dart';
import 'KCCar.dart';

// 程序运行的 main 函数 (入口)
// 应用程序运行的函数 类比: UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
// 因为在 Flutter 世界里面 都是各种部件
// Demo1  自定义了小部件
// void main() => runApp(KCWidget());

// Demo2 导航栏样式界面
// void main() => runApp(KCBar());

// Demo3 ListView 展示数据
// Demo4 富文本
void main() => runApp(ListViewApp());

class ListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewHome(),
      theme: ThemeData(primaryColor: Colors.orange),
    );
  }
}

class ListViewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('KCCarList', style: TextStyle(color: Colors.white)),
      ),
      body: KCRichTextDemo()
    );
  }
}








