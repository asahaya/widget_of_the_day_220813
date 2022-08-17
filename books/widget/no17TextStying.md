---
title: "TextStying"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---
![](/images/c17-1.png =250x)

```diff dart:textstying.dart
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
```

![](/images/c17-2.png =250x)


```diff dart:textstying.dart
+//分離
+final pinkFont = TextStyle(
+  fontSize: 30,
+  color: Colors.pink,
+  fontStyle: FontStyle.normal,
+);

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
-              style: TextStyle(fontSize: 20, color: Colors.pink),
+              style: pinkFont,
            ),
          ],
        ),
```
