import 'package:flutter/material.dart';
import 'KCCar.dart';

class KCListView extends StatelessWidget {

  Widget _itemForRow(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: <Widget>[
          Image.network(carDatas[index].imageUrl),
          SizedBox(height: 10),
          Text(
            carDatas[index].name,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.values[1]),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _itemForRow,
      itemCount: carDatas.length,
    );
  }
}

// 模型数组
final List<KCCar> carDatas = [
  KCCar(
    name: '保时捷918 Spyder',
    imageUrl:
        'https://upload-images.jianshu.io/upload_images/2990730-7d8be6ebc4c7c95b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
  ),
  KCCar(
    name: '兰博基尼Aventador',
    imageUrl:
        'https://upload-images.jianshu.io/upload_images/2990730-e3bfd824f30afaac?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
  ),
  KCCar(
    name: '法拉利Enzo',
    imageUrl:
        'https://upload-images.jianshu.io/upload_images/2990730-a1d64cf5da2d9d99?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
  ),
  KCCar(
    name: 'Zenvo ST1',
    imageUrl:
        'https://upload-images.jianshu.io/upload_images/2990730-bf883b46690f93ce?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
  ),
  KCCar(
    name: '迈凯伦F1',
    imageUrl:
        'https://upload-images.jianshu.io/upload_images/2990730-5a7b5550a19b8342?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
  ),
  KCCar(
    name: '萨林S7',
    imageUrl:
        'https://upload-images.jianshu.io/upload_images/2990730-2e128d18144ad5b8?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
  ),
  KCCar(
    name: '科尼赛克CCR',
    imageUrl:
        'https://upload-images.jianshu.io/upload_images/2990730-01ced8f6f95219ec?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
  ),
  KCCar(
    name: '布加迪Chiron',
    imageUrl:
        'https://upload-images.jianshu.io/upload_images/2990730-7fc8359eb61adac0?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
  ),
  KCCar(
    name: '轩尼诗Venom GT',
    imageUrl:
        'https://upload-images.jianshu.io/upload_images/2990730-d332bf510d61bbc2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
  ),
  KCCar(
    name: '西贝尔Tuatara',
    imageUrl:
        'https://upload-images.jianshu.io/upload_images/2990730-3dd9a70b25ae6bc9?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
  )
];
