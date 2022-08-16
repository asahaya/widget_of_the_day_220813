---
title: "ListView"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

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

```diff dart:ListView.dart
class _No04_ListView_BuilderState extends State<No04_ListView_Builder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.deepOrange[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.deepOrange[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.deepOrange[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.deepOrange[200],
              ),
            ),
          ],
        ),
      ),
    );
  }

```
```diff dart:ListView.dart

-        body: Column(
+　       body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),

```
```diff dart:ListView.dart

　       body: ListView(
+        physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
```


```diff dart:ListView.dart
     home: Scaffold(
        body: ListView(
          children: [
            MySquare(),
            MySquare(),
            MySquare(),
            MySquare(),
          ],
        ),
      ),
    );
  }
}

//コードをきれいにするために分離しましょう
class MySquare extends StatelessWidget {
  const MySquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.deepOrange[200],
      ),
    );
  }
}

```


//ListView.builder
```diff dart:ListView.dart
class _No04_ListView_BuilderState extends State<No04_ListView_Builder> {
+   final List _posts = [
+    'post 1',
+    'post 2',
+    'post 3',
+  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
-        body: ListView(
-          children: [
-            MySquare(),
-            MySquare(),
-            MySquare(),
-            MySquare(),
-          ],
-        ),
+        body: ListView.builder(
+            itemCount: 2,
+            itemBuilder: (context, index) {
+              return MySquare();
+            }),
      ),
    );
  }

```




```diff dart:ListView.dart
        body: ListView.builder(
-            itemCount: 2,
+            //個数
+            itemCount: _posts.length,
            itemBuilder: (context, index) {
              return MySquare();
            }),

```



//text_
```diff dart:ListView.dart
            //個数
            itemCount: _posts.length,
            itemBuilder: (context, index) {
-              return MySquare();
+              return MySquare(
+                childText: _posts[index],
+              );

            }),
      ),
    );
  }
}

//コードをきれいにするために分離しましょう
class MySquare extends StatelessWidget {

+    final String childText;

+  MySquare({
+    Key? key,
+    required this.childText,
+  }) : super(key: key);
-  const MySquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.deepOrange[200],
+          child: Center(
+          child: Text(
+            childText,
+            style: TextStyle(fontSize: 40),
+          ),
+        ),
      ),
    );
  }

```


//表示範囲指定
```diff dart:ListView.dart
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
            //個数
            itemCount: _posts.length,
            itemBuilder: (context, index) {
              return MySquare(
                childText: _posts[index],
              );
            }),
      ),
    );
  }
 ----------------------
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
+     alignment: Alignment.center,
        height: 200,
        color: Colors.deepOrange[200],
        child: Center(

```

//circle_insta
```diff dart:ListView.dart
      home: Scaffold(
        body: Column(
          children: [
+            Row(
+              children: [
+                Padding(
+                  padding: const EdgeInsets.all(8.0),
+                  child: Container(
+                    height: 100,
+                   width: 100,
+                    decoration: BoxDecoration(
+                      shape: BoxShape.circle,
+                      color: Colors.pink,
+                    ),
+                  ),
+                ),
+                Padding(
+                  padding: const EdgeInsets.all(8.0),
+                  child: Container(
+                    height: 100,
+                    width: 100,
+                    decoration: BoxDecoration(
+                      shape: BoxShape.circle,
+                      color: Colors.pink,
+                    ),
+                  ),
+                ),
+                Padding(
+                  padding: const EdgeInsets.all(8.0),
+                  child: Container(
+                    height: 100,
+                    width: 100,
+                    decoration: BoxDecoration(
+                      shape: BoxShape.circle,
+                      color: Colors.pink,
+                    ),
+                  ),
+                ),
+              ],
+            ),
+            Expanded(
              child: ListView.builder(
                  //個数
                  itemCount: _posts.length,

```

```diff dart:ListView.dart
class _No04_ListView_BuilderState extends State<No04_ListView_Builder> {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
  ];
  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 150,
              child: ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyCircle(
                    textChild: _stories[index],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                  //個数
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                    return MySquare(
                      childText: _posts[index],
                    );
                  }),
            ),
          ],
        ),
      ),

```
```diff dart:ListView.dart
+ sss
- xxx

```
```diff dart:ListView.dart
+ sss
- xxx

```