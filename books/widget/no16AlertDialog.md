---
title: "AlertDialog"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---
![](/images/c16-m1.gif =250x)
```diff dart:alertdialog.dart
class Separate extends StatefulWidget {
  const Separate({Key? key}) : super(key: key);

  @override
  State<Separate> createState() => _SeparateState();
}

class _SeparateState extends State<Separate> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          // return CupertinoAlertDialog(
          return AlertDialog(
            backgroundColor: Colors.deepPurple[100],
            title: Text('Title'),
            content: Text('Contant,more info'),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: Text('YES'),
              ),
              MaterialButton(
                onPressed: () {
                  //元の画面に戻る
                  Navigator.pop(context);
                },
                child: Text('No'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[100],
          onPressed: _showDialog,
          child: Text(
            'SHOW DIALOG',
            style: TextStyle(letterSpacing: 4),
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