---
title: "GestureDetector"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

```diff dart:GestureDetector.dart
class _No08_GestureDetectorState extends State<No08_GestureDetector> {
  int tappedCount = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	@@ -17,7 +19,34 @@ class _No01_ContainerState extends State<No01_Container> {
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //tappedCountはint型なので文字列型にしましょう
              Text(
                'Tappend ' + tappedCount.toString() + ' times',
                style: TextStyle(fontSize: 30),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tappedCount++;
                    // tappedCount + 1; //++を同意
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.deepPurple[200],
                  child: Text(
                    'TAP HERE',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

```
```diff dart:gesturedetector.dart

+  int tappedCount = 0;

+  void _touch() {
+    setState(() {
+      tappedCount++;
+    });
+  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //tappedCountはint型なので文字列型にしましょう
              Text(
                'Tappend ' + tappedCount.toString() + ' times',
                style: TextStyle(fontSize: 30),
              ),
              GestureDetector(
+                onTap: _touch,
-                onTap: () {
-                  setState(() {
-                    tappedCount++;
-                    // tappedCount + 1; //++を同意
-                  });
-                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.deepPurple[200],


```