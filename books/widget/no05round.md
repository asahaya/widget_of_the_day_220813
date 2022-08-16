---
title: "ClipRRect"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---




```diff dart:No05_RoundCorners.dart
class _No05_RoundCornersState extends State<No05_RoundCorners> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
```
```diff dart:ListView.dart
+ sss
- xxx

```