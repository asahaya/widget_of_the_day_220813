---
title: "Slider"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---
![](/images/c24-m1.gif =250x)

```diff dart:slider.dart
class No24_Slider extends StatelessWidget {
  const No24_Slider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: No24_Separate(),
    );
  }
}

class No24_Separate extends StatefulWidget {
  const No24_Separate({Key? key}) : super(key: key);

  @override
  State<No24_Separate> createState() => _No24_SeparateState();
}

class _No24_SeparateState extends State<No24_Separate> {
//現在値
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          _currentValue.toString(),
          style: TextStyle(fontSize: 30),
        ),
        Slider(
          value: _currentValue,
          min: 0,
          max: 10,
          //移動できる間隔
          divisions: 4,
          //目盛り部分コメント
          label: _currentValue.toString(),
          //範囲内カラー
          activeColor: Colors.purple,
          //範囲外カラー
          inactiveColor: Colors.deepPurple,
          //該当部カラー
          thumbColor: Colors.white,
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
        ),
      ]),
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