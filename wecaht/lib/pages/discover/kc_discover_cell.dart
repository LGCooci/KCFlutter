import 'package:flutter/material.dart';
import 'package:wecaht/pages/discover/kc_discover_childpage.dart';

class KCDiscoverCell extends StatefulWidget {
  final String title;
  final String subTitle;
  final String imageName;
  final String subImageName;

  KCDiscoverCell({
    this.title,
    this.subTitle,
    this.imageName,
    this.subImageName
  });

  @override
  _KCDiscoverCellState createState() => _KCDiscoverCellState();
}

class _KCDiscoverCellState extends State<KCDiscoverCell> {

  Color _currentColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) =>
                KCDiscoverChildPage(tittle: widget.title,)));
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
        height: 54,
        child: Row(
          // 两端排列
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //left
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Image(image: AssetImage(widget.imageName),
                    width: 20,
                  ),
                  SizedBox(width: 15,),
                  Text(widget.title),
                ],
              ),
            ),
            // right
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  widget.subTitle != null  ? Text(widget.subTitle) : Text(''),
                  widget.subImageName != null ? Image(image: AssetImage(widget.subImageName),
                    width: 10,)
                      : Container(),
                  Image(image: AssetImage('images/icon_right.png'),width: 15,),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}


