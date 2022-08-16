---
title: "DatePicker"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

```diff dart:datepicker.dart
class No25_DatePicker extends StatelessWidget {
  const No25_DatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //カレンダーの色を変える
      // theme: ThemeData(primarySwatch: Colors.deepPurple),
      theme: ThemeData(brightness: Brightness.dark),
      home: No25_Separate(),
    );
  }
}

class No25_Separate extends StatefulWidget {
  const No25_Separate({Key? key}) : super(key: key);

  @override
  State<No25_Separate> createState() => _No25_SeparateState();
}

class _No25_SeparateState extends State<No25_Separate> {
//初期値を入力
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _dateTime.toString(),
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "year  " + _dateTime.year.toString(),
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "month  " + _dateTime.month.toString(),
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "day  " + _dateTime.day.toString(),
            style: TextStyle(fontSize: 30),
          ),
          MaterialButton(
            onPressed: _showDatePicker,
            color: Colors.deepPurple,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Choose Date',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      )),
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