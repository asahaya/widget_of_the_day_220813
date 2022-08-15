import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                  height: 300,
                  width: 300,
                  color: Colors.deepPurple[200],
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.deepPurple[400],
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurple[600],
                ),
              ]),
        ),
      ),
    );
  }
}
