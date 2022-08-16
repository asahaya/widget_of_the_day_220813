---
title: "GridView"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---



```diff dart:gridview.dart
class _No07_GridView_BuilderState extends State<No07_GridView_Builder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          //横に並べる数
          crossAxisCount: 2,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.deepPurple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.deepPurple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
```



//builder
```diff dart:xxxx.dart
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: GridView.builder(
              //配列する個数
              itemCount: 5,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.deepPurple,
                  ),
                );
              })),
    );
  }
}
```

