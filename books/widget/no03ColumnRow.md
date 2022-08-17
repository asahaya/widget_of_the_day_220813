---
title: "Column&Row"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---
![](/images/c03-1.png =250x)

```diff dart:ColumnRow.dart
class _No03_Column_RowState extends State<No03_Column_Row> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          //Column向きに全体を中央揃え
          // mainAxisAlignment: MainAxisAlignment.center,

          // mainAxisAlignment: MainAxisAlignment.start, //上
          // mainAxisAlignment: MainAxisAlignment.end, //下
          mainAxisAlignment: MainAxisAlignment.spaceAround, //等間隔分け（上下余白あり）
          // mainAxisAlignment: MainAxisAlignment.spaceBetween, //等間隔分け（上下余白なし）
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //等間隔分け（上下余白あり）
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[600],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[400],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[200],
            ),
          ],
        ),
      ),
    );
  }

```
![](/images/c03-2.png =250x)


```diff dart:ColumnRow.dart
 home: Scaffold(
        body: Column(
          //Column向きに全体を中央揃え
-          // mainAxisAlignment: MainAxisAlignment.center,
+             mainAxisAlignment: MainAxisAlignment.center,

          // mainAxisAlignment: MainAxisAlignment.start, //上
          // mainAxisAlignment: MainAxisAlignment.end, //下
-         mainAxisAlignment: MainAxisAlignment.spaceAround, //等間隔分け（上下余白あり）
+         // mainAxisAlignment: MainAxisAlignment.spaceAround, //等間隔分け（上下余白あり）
          // mainAxisAlignment: MainAxisAlignment.spaceBetween, //等間隔分け（上下余白なし）
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //等間隔分け（上下余白あり）
+          //Columnと逆向きの左揃え
+          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
-              width: 100,
+           // width: 100,
              height: 100,
              color: Colors.deepPurple[600],
            ),
            Container(
-              width: 100,
+              width: 300,
              height: 100,
              color: Colors.deepPurple[400],
            ),

```
![](/images/c03-3.png =250x)
```diff dart:ColumnRow.dart
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          //Column向きに全体を中央揃え
          mainAxisAlignment: MainAxisAlignment.center,

          //Columnと逆向きの左揃え
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                // width: 100,
                // height: 100,
                color: Colors.deepPurple[600],
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[400],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[200],
            ),
          ],
        ),
      ),
    );
  }
}
``````
