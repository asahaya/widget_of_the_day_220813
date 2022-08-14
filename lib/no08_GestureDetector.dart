import 'package:flutter/material.dart';

//GestureDetectorはStatefulWidgetでないと動かない
class No08_GestureDetector extends StatefulWidget {
  const No08_GestureDetector({Key? key}) : super(key: key);

  @override
  State<No08_GestureDetector> createState() => _No08_GestureDetectorState();
}

class _No08_GestureDetectorState extends State<No08_GestureDetector> {
  int tappedCount = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //tappedCountはint型なので文字列型にしましょう
              Text(
                'Tappend ' + tappedCount.toString() + ' times',
                style: TextStyle(fontSize: 30),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tappedCount++;
                    // tappedCount + 1; //++を同意
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.deepPurple[200],
                  child: Text(
                    'TAP HERE',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
