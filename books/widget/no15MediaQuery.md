---
title: "MadiaQuery"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

```diff dart:mediaquery.dart
class Separeta extends StatelessWidget {
  const Separeta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //タテのデバイス高さ
    double deviceHeight = MediaQuery.of(context).size.height;
    //タテのデバイス高さ
    double deviceWidth = MediaQuery.of(context).size.width;
    //アスペクト比率
    double aspect = MediaQuery.of(context).size.aspectRatio;
    //タテORヨコ向き
    Orientation tateyoko = MediaQuery.of(context).orientation;

    final TextStyle textFormat =
        TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Height : ' + deviceHeight.toString(), style: textFormat),
            Text(
              'Width : ' + deviceWidth.toString(),
              style: textFormat,
            ),
            //toStringAsFixed=文字列変化+小数点繰り上げ
            Text(
              '比率 ：' + aspect.toStringAsFixed(2),
              style: textFormat,
            ),
            Text(
              'デバイス向き ：' + tateyoko.toString(),
              style: textFormat,
            ),
          ]),
    );
  }
}
```
```diff dart:GestureDetector.dart

```
```diff dart:GestureDetector.dart

```
```diff dart:GestureDetector.dart

```