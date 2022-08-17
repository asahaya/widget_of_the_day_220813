---
title: "TextInput"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true

---


```diff dart:textfield.dart
class _No22_TextFieldState extends State<No22_TextField> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: No22_Separate(),
    );
  }
}

class No22_Separate extends StatefulWidget {
  const No22_Separate({Key? key}) : super(key: key);

  @override
  State<No22_Separate> createState() => _No22_SeparateState();
}

class _No22_SeparateState extends State<No22_Separate> {
  //入力したデータを引き継ぐのに使用する
  final _textController = TextEditingController();
  //出力部分
  String outputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              flex: 1,
              child: Container(
                child: Center(child: Text(outputText)),
              )),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                      //入力前に表示されるテキスト
                      hintText: 'What\'s Input??',
                      //外枠をつける
                      border: OutlineInputBorder(),
                      //右に配置されるアイコン
                      suffixIcon: IconButton(
                        onPressed: () {
                          _textController.clear();
                        },
                        icon: Icon(Icons.clear),
                      )),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      outputText = _textController.text;
                    });
                  },
                  color: Colors.deepPurple,
                  child: const Text(
                    'SEND',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
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