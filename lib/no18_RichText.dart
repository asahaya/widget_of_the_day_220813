import 'package:flutter/material.dart';

class no18_RichText extends StatelessWidget {
  const no18_RichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 350,
              color: Colors.grey[350],
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                  TextSpan(
                      text: 'AAA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 4)),
                  TextSpan(text: 'ZZZ', style: TextStyle(color: Colors.green)),
                ]))
          ],
        ),
      ),
    );
  }
}
