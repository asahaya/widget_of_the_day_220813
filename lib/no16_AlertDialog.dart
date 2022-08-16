import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class No16_AlertDialog extends StatelessWidget {
  const No16_AlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Separate(),
    );
  }
}

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
}
