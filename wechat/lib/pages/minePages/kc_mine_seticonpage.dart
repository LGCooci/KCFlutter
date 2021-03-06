
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class KCMineSetIconPage extends StatefulWidget {

  final Image iconImage;
  KCMineSetIconPage({this.iconImage});

  @override
  _KCMineSetIconPageState createState() => _KCMineSetIconPageState();
}
class _KCMineSetIconPageState extends State<KCMineSetIconPage> {
  Color _themeColor = Color.fromRGBO(220, 220, 220, 1);

  // File _image;
  ///记录每次选择的图片
  List _images = [];
//  List<PickedFile> _images = [];
  Future getImage(String type) async {
    Navigator.pop(context);
    try {
      var image = await ImagePicker.pickImage(
          source: type == "拍照" ? ImageSource.camera :ImageSource.gallery
      );
      if (image == null) {
        return;
      } else {
        setState(() {
          // _image = image;
          _images.add(image);
        });
      }
    } catch (e) {
      print("模拟器不支持相机！");
    }
  }

  @override  Widget build(BuildContext context) {
    final _screenWidth  = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    final double topPadding = MediaQuery.of(context).padding.top;
    final double bottomPadding = MediaQuery.of(context).padding.bottom;
    final double navbarHeight  = 56.0;


    return Scaffold(
      appBar: AppBar(
        title: Text('个人头像', style: TextStyle(color: _themeColor)),
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        centerTitle: true,
        elevation: 0.0,
        iconTheme:IconThemeData(
          color: _themeColor,
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_horiz),color: _themeColor,
              onPressed: (){
            print(' 点击设置头像');
            _showBottomSheet();
          }),
        ],
      ),
      body: new Container(
        color: Colors.black,
        child: Image(image: AssetImage('images/cooci.png'),width:
        _screenWidth, height: _screenWidth),
        padding: EdgeInsets.only(bottom:
         (_screenHeight-_screenWidth)
            /2),
        height: _screenHeight-navbarHeight-topPadding,
        width: _screenWidth,
      ),
    );
  }

  // 弹框
  _showBottomSheet(){
      showModalBottomSheet(context: context, builder: (context) => Container(
        height: 160,
        child: Column(
          children: <Widget>[
            Container(),
            _takePhotoItem('拍照'),
            _takePhotoItem('从手机相册选择'),
          ],
        ),
      ));
    }

    // 拍照 / 从相册获取
  _takePhotoItem(String type){
    print(type);
    return GestureDetector(
      child: ListTile(
        title: Text(type),
        onTap: (){

          if (type == '取消'){

          }else if (type == '保存图片'){

          }else{
            getImage(type);
          }

        },
      ),
    );
  }


}


