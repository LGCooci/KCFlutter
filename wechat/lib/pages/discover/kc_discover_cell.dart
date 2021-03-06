import 'package:flutter/material.dart';
import 'package:wecaht/pages/discover/kc_discover_childpage.dart';
import 'package:wecaht/pages/minePages/kc_mine_seticonpage.dart';

class KCDiscoverCell extends StatefulWidget {
  final String title;
  final String subTitle;
  final String imageName;
  final String subImageName;
  final String linetype;
  // subImageType = 2 个人信息 带头像  3 二维码
  final String subImageType;
  // 纪录头像
  Image subImage;


  KCDiscoverCell({
    this.title,
    this.subTitle,
    this.imageName,
    this.subImageName,
    this.linetype,
    this.subImageType,
    this.subImage,
  });

  @override
  _KCDiscoverCellState createState() => _KCDiscoverCellState();
}

class _KCDiscoverCellState extends State<KCDiscoverCell> {

  Color _currentColor = Colors.white;

  @override
  Widget build(BuildContext context) {

    double margin = widget.linetype == '1' ? 10 : 1;
    double padding = widget.linetype == '1' ? 0 : 45;

    return GestureDetector(
      onTap: (){
        Widget page = KCDiscoverChildPage(tittle: widget.title);
        if (widget.title == '头像'){
          page = KCMineSetIconPage(iconImage: widget.subImage);
        }

        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => page));
        setState(() {
          _currentColor = Colors.white;
        });
      },

      onTapDown: (TapDownDetails details){
        setState(() {
          _currentColor = Colors.grey;
        });
      },

      onTapCancel: (){
        setState(() {
          _currentColor = Colors.white;
        });
      },

      child: Container(
        color: _currentColor,
        height: (widget.subImageType == '2') ? 80 : (widget.linetype == "1"? 64
          : 54.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //left
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, margin/2),
                  child: Row(
                    children: <Widget>[
                      widget.imageName != null ? Image(image: AssetImage(widget.imageName), width: 20,): Container(),
                      SizedBox(width: 15),
                      Text(widget.title),
                    ],
                  ),
                ),
                // right
                Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, margin/2),
                    child: Row(
                      children: <Widget>[
                        widget.subTitle != null  ? Text(widget.subTitle) : Text(''),
                        widget.subImageName != null ? Image(image: AssetImage(widget.subImageName),
                          width: (widget.subImageType == '2') ? 40 : (widget
                              .subImageType == '3') ? 20 : 10,)
                            : Container(),
                        Image(image: AssetImage('images/icon_right.png'),width: 15,),
                      ],
                    )
                ),
              ],
            )),
            Divider(height: 1.0,thickness: margin,
                indent: padding,color:
                Color.fromRGBO(220, 220, 220, 1)),
          ],
        ),
      ),
    );
  }
}


