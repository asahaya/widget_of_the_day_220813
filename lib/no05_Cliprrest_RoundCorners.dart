import 'package:flutter/material.dart';

class No05_RoundCorners extends StatefulWidget {
  const No05_RoundCorners({Key? key}) : super(key: key);

  @override
  State<No05_RoundCorners> createState() => _No05_RoundCornersState();
}

class _No05_RoundCornersState extends State<No05_RoundCorners> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
}
