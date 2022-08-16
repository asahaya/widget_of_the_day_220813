---
title: "RichText"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

```diff dart:richtext.dart
 Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 350,
              color: Colors.grey[350],
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                  TextSpan(
                      text: 'AAA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 4)),
                  TextSpan(text: 'ZZZ', style: TextStyle(color: Colors.green)),
                ]))
          ],
        ),
      ),
    );
  }
```
```diff dart:GestureDetector.dart

```
```diff dart:GestureDetector.dart

```
```diff dart:GestureDetector.dart

```