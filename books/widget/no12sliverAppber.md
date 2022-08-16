---
title: "SliverAppBar"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

```diff dart:sliverAppBar.dart
class _No12_SliverAppBarState extends State<No12_SliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Separate(),
    );
  }
}

class Separate extends StatefulWidget {
  const Separate({Key? key}) : super(key: key);

  @override
  State<Separate> createState() => _SeparateState();
}

class _SeparateState extends State<Separate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(slivers: [
        SliverAppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple[300],
          leading: Icon(Icons.menu),
          title: Text(
            'SLIVERAPPBER',
            style: TextStyle(letterSpacing: 10.0),
          ),
          expandedHeight: 250,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                height: 400,
                color: Colors.deepPurple[200],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                height: 400,
                color: Colors.deepPurple[200],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
```

```diff dart:sliverAppBar.dart
  SliverAppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple[300],
          leading: Icon(Icons.menu),
          title: Text(
            'SLIVERAPPBER',
            style: TextStyle(letterSpacing: 10.0),
          ),
+          expandedHeight: 250,
+          flexibleSpace: FlexibleSpaceBar(
+            background: Container(
+              color: Colors.pink,
+            ),
+          ),


        ),

```

```diff dart:sliverAppBar.dart
      body: CustomScrollView(slivers: [
        SliverAppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple[300],
          leading: Icon(Icons.menu),
-          title: Text(
-            'SLIVERAPPBER',
-            style: TextStyle(letterSpacing: 10.0),
-          ),
          expandedHeight: 250,

+                    //Barの移動
+          floating: true,
+          //barが消えない
+          pinned: true,
+          //スライドによる色の変更

          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              color: Colors.pink,
            ),
+                        title: Text(
+              'SLIVERAPPBER',
+              style: TextStyle(letterSpacing: 3.0),
+            ),
          ),
        ),

```

```diff dart:sliverAppBar.dart


```