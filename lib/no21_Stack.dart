import 'package:flutter/material.dart';

class No21_StackWidget extends StatelessWidget {
  const No21_StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
              // alignment: AlignmentDirectional.center, //重なる全要素を全部中央に
              alignment: AlignmentDirectional.bottomCenter, //
              children: [
                Container(
                  color: Colors.deepPurple[100],
                  alignment: Alignment(0.5, 1.2),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple[200],
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
