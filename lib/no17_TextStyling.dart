import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class no17_TextStying extends StatelessWidget {
  const no17_TextStying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //共通テーマ
          textTheme: TextTheme(
        bodyText2: TextStyle(
          //文字サイズ
          fontSize: 35,
          //斜体
          fontStyle: FontStyle.italic,
          //太字
          fontWeight: FontWeight.bold,
          //文字色
          color: Colors.green[100],
        ),
      )),
      home: Separate(),
    );
  }
}
// bodyText1
// DrawerHeaderのchild
// Drawer内のListTileのtitle
// bodyText2
// 通常のText
// Cardのchild
// AboutDialogやライセンスページのバージョン名

class Separate extends StatelessWidget {
  const Separate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Text Widget Tutorial',
            ),
            //共通テーマは引き継ぎ、指定部分を塗り替える
            Text(
              'Text Widget Tutorial',
              style: TextStyle(fontSize: 20, color: Colors.pink),
            ),
          ],
        ),
      ),
    );
  }
}
