import 'package:flutter/material.dart';

class No06_ImageAsset extends StatefulWidget {
  const No06_ImageAsset({Key? key}) : super(key: key);

  @override
  State<No06_ImageAsset> createState() => _No06_ImageAssetState();
}

class _No06_ImageAssetState extends State<No06_ImageAsset> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
            child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              child: Image.asset(
                'assets/images/flutter_image.png',
                //contain=画面サイズに合わせて拡大する
                //cover=余白をなくして広げる
                //fitWidth=横幅に広げる
                //fitHeight=縦幅に広げる
                //fill=比率を無視して塗りつぶす
                fit: BoxFit.fill,
              )),
        )),
      ),
    );
  }
}
