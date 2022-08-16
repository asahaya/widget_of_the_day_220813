---
title: "Expanded"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
free: true 
---
![](/images/c02-1.png =250x)


```diff dart:Expanded.dart
Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              color: Colors.deepPurple,
            ),
            Expanded(
              child: Container(
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }

```

![](/images/c02-2.png =250x)

```diff dart:Expanded.dart
  home: Scaffold(
        body: Column(
          children: [
-            Container(
-              height: 200,
-              color: Colors.deepPurple,
+            Expanded(
+              child: Container(
+                color: Colors.deepPurple,
+              ),
            ),
            Expanded(
              child: Container(

```

![](/images/c02-3.png =250x)

```diff dart:Expanded.dart
  home: Scaffold(
        body: Column(
          children: [
            Expanded(
+              flex:2,
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.pink,
              ),
            ),
+            Expanded(
+              child: Container(
+                color: Colors.blue,
+              ),
+            ),
          ],
        ),
      ),

```
```diff dart:Expanded.dart
+ sss
- xxx

```

```diff dart:xxxx.dart
+ sss
- xxx

```