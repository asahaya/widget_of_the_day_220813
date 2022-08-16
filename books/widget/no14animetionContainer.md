---
title: "AnimationContainer"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

![](/images/c14-m01.gif =250x)


```diff dart:animationContainer.dart

class _No14_AnimatedContainerState extends State<No14_AnimatedContainer> {
  //初期値
  double boxHeight = 100;
  double boxWidth = 100;

  void _expandedBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: _expandedBox,
        child: Scaffold(
          backgroundColor: Colors.deepPurple[200],
          body: Center(
              child: Container(
            height: boxHeight,
            width: boxWidth,
            color: Colors.deepPurple,
          )),
        ),
      ),
    );
  }

```

![](/images/c14-m02.gif =250x)


```diff dart:animationContainer.dart
  //初期値
  double boxHeight = 100;
  double boxWidth = 100;
+ var boxColor = Colors.deepPurple;

  void _expandedBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
+     boxColor = Colors.pink;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: _expandedBox,
        child: Scaffold(
          backgroundColor: Colors.deepPurple[200],
          body: Center(
+            child: AnimatedContainer(
+            //1秒で変化完了
+            duration: Duration(seconds: 1),
              child: Container(
            height: boxHeight,
            width: boxWidth,
-            color: Colors.deepPurple,
+            color: boxColor,      
          )),
        ),
      ),
```
![](/images/c14-m03.gif =250x)

```diff dart:animationContainer.dart
 double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.deepPurple;
+  double boxX = -1;
+  double boxY = -1;

  void _expandedBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
      boxColor = Colors.pink;
    });
  }

+   void _moveBox() {
+    setState(() {
+      boxX = 1;
+      boxY = 1;
+    });
+  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
-        onTap: _expandedBox,
+        onTap: _moveBox,
        child: Scaffold(
          backgroundColor: Colors.deepPurple[200],
-          body: Center(
-              child: AnimatedContainer(
+          body: AnimatedContainer(
            //1秒で変化完了
            duration: Duration(seconds: 1),

+              alignment: Alignment(boxX, boxY),
+            //Containerで内包しないと実行されない？？
+            child: Container(
+              height: boxHeight,
+              width: boxWidth,
+              color: boxColor,
            ),
          ),
-            height: boxHeight,
-            width: boxWidth,
-            color: boxColor,
-          )),
        ),
      ),
    );
	
```