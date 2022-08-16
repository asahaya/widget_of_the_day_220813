---
title: "Timer"
emoji: "📘"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: true
---

```diff dart:timer.dart
class _No19_TimerState extends State<No19_Timer> {
  int timeLeft = 5;

  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          // timeLeft--;
          timeLeft = timeLeft - 1;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                timeLeft == 0 ? 'DONE' : timeLeft.toString(),
                style: TextStyle(fontSize: 50),
              ),
              MaterialButton(
                onPressed: _startCountDown,
                child: Text(
                  'START',
                  style: TextStyle(letterSpacing: 5, color: Colors.white),
                ),
                color: Colors.purple,
              ),
            ],
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