---
title: "IconAmination"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---
![](/images/c23-m1.gif =250x)

```diff dart:iconAnimation.dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: No23_Separate(),
    );
  }
}

class No23_Separate extends StatefulWidget {
  const No23_Separate({Key? key}) : super(key: key);

  @override
  State<No23_Separate> createState() => _No23_SeparateState();
}

//withで継承
class _No23_SeparateState extends State<No23_Separate>
    with SingleTickerProviderStateMixin {
//controller late=あとで値を入れる
  late AnimationController _animetionController;

  //Widgetが構築される際に実行
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animetionController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  bool videoPlaying = false;
  void _iconTapped() {
    if (videoPlaying == false) {
      //forward=animationを進める
      //reverse=animationを元に戻す
      _animetionController.forward();
      videoPlaying = true;
    } else {
      _animetionController.reverse();
      videoPlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _iconTapped,
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _animetionController,
            size: 150,
          ),
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