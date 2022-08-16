---
title: "TabBar"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

```diff dart:tapBer.dart
class _No13_TabBarState extends State<No13_TabBar> {
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'TABBER',
            style: TextStyle(letterSpacing: 12.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[300],
        ),
        body: Column(children: [
          TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      body: Center(
        child: Text(
          'First Page',
          style: TextStyle(fontSize: 20, letterSpacing: 3.0),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Center(
        child: Text(
          'Second Page',
          style: TextStyle(fontSize: 20, letterSpacing: 3.0),
        ),
      ),
    );
  }
}

```
no13_tabber_background
```diff dart:tapBer.dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
+      theme: ThemeData(primarySwatch: Colors.deepPurple),
+      debugShowCheckedModeBanner: false,
      home: Separate(),
    );
  }
}

 --------------------------------
class _SeparateState extends State<Separate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'TABBER',
            style: TextStyle(letterSpacing: 12.0),
          ),
          centerTitle: true,
-          backgroundColor: Colors.deepPurple[300],
        ),
        body: Column(children: [
          TabBar(
	            tabs: [
              Tab(
                icon: Icon(
+                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
              ),
              Tab(
                icon: Icon(
+                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
+                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
            ],
                      ),
+          //Expandedでくるまないとエラー
+          Expanded(
+            child: TabBarView(
+              children: [
+                One_Page(),
+                Two_Page(),
+                Three_Page(),
+              ],
+            ),

          )
        ]),
      ),
    );
  }
}

-  class FirstPage extends StatelessWidget {
-  const FirstPage({Key? key}) : super(key: key);
+  class Two_Page extends StatelessWidget {
+  const Two_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
-    return Scaffold(
-      backgroundColor: Colors.lightBlue[200],
-      body: Center(
-        child: Text(
-          'First Page',
-          style: TextStyle(fontSize: 20, letterSpacing: 3.0),
-        ),
-      ),
+    return Container(
+      color: Colors.teal,
+      child: Center(child: Text('2ST TAB')),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Center(
        child: Text(
          'Second Page',
          style: TextStyle(fontSize: 20, letterSpacing: 3.0),
        ),
      ),
    );
  }
}

+ class Three_Page extends StatelessWidget {
+  const Three_Page({Key? key}) : super(key: key);

+  @override
+  Widget build(BuildContext context) {
+    return Container(
+      color: Colors.pink,
+      child: Center(child: Text('3ST TAB')),
+    );
+  }
+ }

```
```diff dart:tapBer.dart


```
```diff dart:tapBer.dart


```

