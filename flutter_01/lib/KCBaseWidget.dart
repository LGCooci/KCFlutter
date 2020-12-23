import 'package:flutter/material.dart';

class KCRichTextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  String _lector = 'cooci';
  String _title = 'Flutter 从入门到项目';
  String _line = '--';

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: _title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
            children: <TextSpan>[
          TextSpan(
              text: _line,
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              )),
              TextSpan(
                  text: _lector,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  )),
        ]));
  }
}

// 基本文本信息
class KCBaseText extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  String _lector = 'cooci';
  String _title = 'Flutter 从入门到项目';

  @override
  Widget build(BuildContext context) {
    return Text(
      '<$_title> -- $_lector 从事软件编程行业8年,从塞班走向iOS. 曾在某企架构业务管理系统以及APP开发'
      '.在社交,'
      '金融,直播,'
      '智能家居以及移动办公都有较深的研究.多年的开发经验,最终灵魂安置教育.老不正经的人格出色地完成一次又一次的研发和教学任务'
      '.因其风趣幽默的授课方式,深受学员喜爱.收到一致好评.',
      textAlign: TextAlign.center,
      style: _textStyle,
      overflow: TextOverflow.ellipsis,
      maxLines: 6,
    );
  }
}
