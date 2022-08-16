---
title: "Container"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---


## 見出し2



//共通
```dart:container.dart
import 'package:flutter/material.dart';
class No01_Container extends StatefulWidget {
  const No01_Container({Key? key}) : super(key: key);
  @override
  State<No01_Container> createState() => _No01_ContainerState();
}
class _No01_ContainerState extends State<No01_Container> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
```


```diff dart:container.dart


import 'package:flutter/material.dart';
class No01_Container extends StatefulWidget {
  const No01_Container({Key? key}) : super(key: key);
  @override
  State<No01_Container> createState() => _No01_ContainerState();
}
class _No01_ContainerState extends State<No01_Container> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
-            color: Colors.purple,
+        //decorationを使う際はColorを中に
+            decoration: BoxDecoration(
+              borderRadius: BorderRadius.circular(15),
+            ),

          ),
        ),
      ),

    );
  }
}

```

```diff dart:container.dart

class _No01_ContainerState extends State<No01_Container> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
-           //decorationを使う際はColorを中に
            decoration: BoxDecoration(
-              borderRadius: BorderRadius.circular(15),
+                shape: BoxShape.circle,
+                border: Border.all(
+                  color: Colors.black,
+                  width: 5,
+                )),
-            ),
          ),
        ),
      ),
    );
  }
}

```



```diff dart:container.dart

class _No01_ContainerState extends State<No01_Container> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
-            height: 200,
-            width: 200,
            //位置
            // alignment: Alignment.center,
            // alignment: Alignment(-1, -1), //LU
            // alignment: Alignment(-1, 1), //BU
            // alignment: Alignment(1, -1), //RU
            // alignment: Alignment(1, 1), //RB
            alignment: Alignment(0.5, 0.5), //Center

            //図形内余白
            padding: EdgeInsets.all(20),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
-                shape: BoxShape.circle,
-                border: Border.all(
-                  color: Colors.black,
-                  width: 5,
-                )),
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),

```

<!-- TODO: ◯◯について追記する -->

```diff dart:container.dart
class _No01_ContainerState extends State<No01_Container> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
              boxShadow: [
                //下
                BoxShadow(
                  //shadowは数字が大きいほど濃くなる
                  color: Colors.grey.shade500,
                  //位置
                  offset: Offset(4.0, 4.0),
                  //ぼかし
                  blurRadius: 15.0,
                  //光彩？
                  spreadRadius: 1.0,
                ),
                //上
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

```
