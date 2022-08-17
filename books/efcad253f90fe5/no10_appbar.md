---
title: "AppBar"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
free: true 
---

![](/images/c10-1.png =250x)


```diff dart:AppBer.dart
class _No10_AppBarState extends State<No10_AppBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          //背景
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

```
transparent

![](/images/c10-2.png =250x)


```diff dart:AppBer.dart
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //primarySwatch=ThemeData内の色プロパティ全体を以下の色に優先させる
      // theme: ThemeData(
      //   primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          //背景
-          backgroundColor: Colors.green,
+          backgroundColor: Colors.transparent,
+          elevation: 9,

        ),
      ),
    );
```

appber_parts

![](/images/c10-3.png =250x)


```diff dart:AppBer.dart

      home: Scaffold(
        appBar: AppBar(
-          title: Text(''),
          //背景
-          backgroundColor: Colors.transparent,
-          elevation: 9,
+          backgroundColor: Colors.deepPurple[300],
+          //影
+          elevation: 0,
+          //title
+          title: Text('A p p b a r'),
+          //text中央揃え
+          centerTitle: true,
+          //左配置
+          leading: IconButton(
+            onPressed: () {},
+            icon: Icon(Icons.menu),
+          ),
+          actions: [
+            IconButton(
+              onPressed: () {},
+              icon: Icon(Icons.share),
+            ),
+            IconButton(
+              onPressed: () {},
+              icon: Icon(Icons.person),
+            ),
+          ],

  ),
      ),
    );
```


```diff dart:AppBer.dart

```