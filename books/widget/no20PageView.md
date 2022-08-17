---
title: "PageView"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---
![](/images/c20-m1.gif =250x)


```diff dart:pageview.dart
class No20_PageView extends StatelessWidget {
  const No20_PageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: No20_Separate(),
    );
  }
}

class No20_Separate extends StatelessWidget {
  final _controller = PageController();
  No20_Separate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
-        scrollDirection: Axis.vertical,
+        //スクロール向き
+        //vertical＝上下
+        //horizontal=左右
+        scrollDirection: Axis.horizontal,
         children: [
          MyPOST1(),
          MyPOST2(),
        ],
      ),
    );
  }
}

class MyPOST1 extends StatelessWidget {
  const MyPOST1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
    );
  }
}

class MyPOST2 extends StatelessWidget {
  const MyPOST2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
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