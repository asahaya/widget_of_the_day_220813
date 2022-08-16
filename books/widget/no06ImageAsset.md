---
title: "ImageAsset"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

```diff yaml:pubspec.yaml
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
+  assets:
+    - assets/images/

```
pub get

```diff dart:ListView.dart
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
            child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              child: Image.asset(
                'assets/images/flutter_image.png',
                //contain=画面サイズに合わせて拡大する
                //cover=余白をなくして広げる
                //fitWidth=横幅に広げる
                //fitHeight=縦幅に広げる
                //fill=比率を無視して塗りつぶす
                fit: BoxFit.fill,
              )),
        )),
      ),
    );
  }

```