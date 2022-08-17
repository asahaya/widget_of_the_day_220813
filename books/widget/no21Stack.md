---
title: "Stack"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---
![](/images/c21-1.png =250x)

```diff dart:stack_widget.dart
class No21_StackWidget extends StatelessWidget {
  const No21_StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(

              // alignment: AlignmentDirectional.center, //重なる全要素を全部中央に
              alignment: AlignmentDirectional.bottomCenter, //
              children: [
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.deepPurple[200],
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.deepPurple[400],
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurple[600],
                ),
              ]),
        ),
      ),
    );
  }
```

![](/images/c21-2.png =250x)



```diff dart:stack_widget.dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(

              // alignment: AlignmentDirectional.center, //重なる全要素を全部中央に
              alignment: AlignmentDirectional.bottomCenter, //
              children: [
                Container(
-                  height: 300,
-                  width: 300,
-                  color: Colors.deepPurple[200],
-                ),
-                Container(
-                  height: 200,
-                  width: 200,
-                  color: Colors.deepPurple[400],
-                ),
-                Container(
-                  height: 100,
-                  width: 100,
-                  color: Colors.deepPurple[600],
+                  color: Colors.deepPurple[100],
+                  alignment: Alignment(0.5, 1.2),
+                  child: Container(
+                    height: 200,
+                    width: 200,
+                    decoration: BoxDecoration(
+                      shape: BoxShape.circle,
+                      color: Colors.deepPurple[200],
+                    ),
+                  ),
                ),
              ]),
        ),
```
```diff dart:GestureDetector.dart

```
```diff dart:GestureDetector.dart

```