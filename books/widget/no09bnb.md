---
title: "BottomNavigationBar"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

```diff dart:bnb.dart
class _No09_BNBState extends State<No09_BNB> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 50),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            //すべて表示させるため
            type: BottomNavigationBarType.fixed,
            items: [
              //2つ以上並べないとエラー
              //labelをnullにするとエラー

              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'message'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'person'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'setting'),
            ]),
      ),
    );
  }

```
//bg
```diff dart:bnb.dart

class _No09_BNBState extends State<No09_BNB> {

+  //bnb初期画面選択
+  int _selectedIndex = 0;

+  //BNB画面遷移処理
+  void _navigationBottomBar(int index) {
+    setState(() {
+      _selectedIndex = index;
+    });
+  }

+  final List<Widget> _pages = [
+    Center(
+      child: Text(
+        'Home',
+        style: TextStyle(fontSize: 50),
+      ),
+    ),
+    Center(
+      child: Text(
+        'Message',
+        style: TextStyle(fontSize: 50),
+      ),
+    ),
+    Center(
+      child: Text(
+        'Account Page',
+        style: TextStyle(fontSize: 50),
+      ),
+    ),
+    Center(
+      child: Text(
+        'Setting Page',
+        style: TextStyle(fontSize: 50),
+      ),
+    ),
+  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
-        body: Center(
-          child: Text(
-            'Hello',
-            style: TextStyle(fontSize: 50),
-          ),
-        ),
+       body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            //すべて表示させるため
            type: BottomNavigationBarType.fixed,
+            //初期表示
+            currentIndex: _selectedIndex,
+            //Navigation
+            onTap: _navigationBottomBar,

            items: [
              //2つ以上並べないとエラー
              //labelをnullにするとエラー
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'message'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'person'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'setting'),
            ]),
      ),
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
```diff dart:GestureDetector.dart


```
```diff dart:GestureDetector.dart


```
```diff dart:GestureDetector.dart


```