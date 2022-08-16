---
title: "Container"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
free: true 
---


## 見出し2

![](/images/c01-1.png =250x)

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

![](/images/c01-6.jpg =250x)
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
![](/images/c01-2.png =250x)

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

![](/images/c01-3.png =250x)


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
![](/images/c01-4.png =250x)
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

<!-- ![](/images/c01-1.png =250x)
![](/images/c01-2.png =250x)
![](/images/c01-3.png =250x)
![](/images/c01-4.png =250x)

![](/images/c02-1.png =250x)
![](/images/c02-2.png =250x)
![](/images/c02-3.png =250x)

![](/images/c03-1.png =250x)
![](/images/c03-2.png =250x)
![](/images/c03-3.png =250x)

![](/images/c04-1.png =250x)
![](/images/c04-2.png =250x)
![](/images/c04-3.png =250x)
![](/images/c04-4.png =250x)
![](/images/c04-5.png =250x)
![](/images/c04-6.png =250x)
![](/images/c04-m1.gif =250x)
![](/images/c04-m2.gif =250x)
![](/images/c04-m3.gif =250x)
![](/images/c04-m4.gif =250x)
![](/images/c04-m5.gif =250x)
![](/images/c04-m6.gif =250x)
![](/images/c04-m7.gif =250x)

![](/images/c05-1.png =250x)


![](/images/c06-1.png =250x)
![](/images/c06-2.png =250x)
![](/images/c06-3.png =250x)


![](/images/c07-1.png =250x)
![](/images/c07-2.png =250x)

![](/images/c08-m1.gif =250x)
![](/images/c08-m2.gif =250x)

![](/images/c09-m01.gif =250x)
![](/images/c09-m02.gif =250x)

![](/images/c10-1.png =250x)
![](/images/c10-2.png =250x)
![](/images/c10-3.png =250x)
![](/images/c10-4.png =250x)

![](/images/c11-m01.gif =250x)
![](/images/c11-m02.gif =250x)


![](/images/c12-m01.gif =250x)
![](/images/c12-m02.gif =250x)
![](/images/c12-m03.gif =250x)


![](/images/c13-m01.gif =250x)
![](/images/c13-m02.gif =250x)

![](/images/c14-m01.gif =250x)
![](/images/c14-m02.gif =250x)
![](/images/c14-m03.gif =250x)

![](/images/c15-1.png =250x)
![](/images/c15-m01.gif =250x)

![](/images/c16-m1.gif =250x)

![](/images/c17-1.png =250x)
![](/images/c17-2.png =250x)
![](/images/c18-1.png =250x)


![](/images/c19-m1.gif =250x)
![](/images/c19-m2.gif =250x)
![](/images/c20-m1.gif =250x)

![](/images/c21-1.png =250x)
![](/images/c21-2.png =250x)

![](/images/c23-m1.gif =250x)
![](/images/c24-m1.gif =250x)
![](/images/c25-m1.gif =250x)
![](/images/c26-m1.gif =250x) -->