
import 'package:flutter/material.dart';

// Widget (小部件) 有的状态的 StateFul 无状态的Stateles
// 自定义的Widget
class KCWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          '和谐学习,不急不躁', // 文本
          textDirection: TextDirection.ltr, // 对齐方式
          style: TextStyle(
            fontSize: 40.0, // 字体大小
            color: Colors.red, // 红色字体
            fontWeight: FontWeight.w400, // 字体的粗细
          ),
        ));
  }
}