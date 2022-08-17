import 'package:flutter/material.dart';

class No15_MediaQuery extends StatelessWidget {
  const No15_MediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Separeta_03(),
    );
  }
}

class Separeta extends StatelessWidget {
  const Separeta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //タテのデバイス高さ
    double deviceHeight = MediaQuery.of(context).size.height;
    //タテのデバイス高さ
    double deviceWidth = MediaQuery.of(context).size.width;
    //アスペクト比率
    double aspect = MediaQuery.of(context).size.aspectRatio;
    //タテORヨコ向き
    Orientation tateyoko = MediaQuery.of(context).orientation;

    final TextStyle textFormat =
        TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Height : ' + deviceHeight.toString(), style: textFormat),
            Text(
              'Width : ' + deviceWidth.toString(),
              style: textFormat,
            ),
            //toStringAsFixed=文字列変化+小数点繰り上げ
            Text(
              '比率 ：' + aspect.toStringAsFixed(2),
              style: textFormat,
            ),
            Text(
              'デバイス向き ：' + tateyoko.toString(),
              style: textFormat,
            ),
          ]),
    );
  }
}

//https://youtu.be/Tdpvv5t67l4?list=PL1WkZqhlAdC8enpcvzv_uAS9FmHTDOCJ8

class Separeta_02 extends StatefulWidget {
  const Separeta_02({Key? key}) : super(key: key);

  @override
  State<Separeta_02> createState() => _Separeta_02State();
}

class _Separeta_02State extends State<Separeta_02> {
  bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600;
  }

  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        if (isDesktop(context))
          Container(
            color: Colors.blue,
            width: 200,
            child: const Center(
              child: Text('SIDEBAR'),
            ),
          ),
        Expanded(
            child: Container(
          color: Colors.red,
          child: const Center(child: Text('CONTENT')),
        )),
      ]),
    );
  }
}

class Separeta_03 extends StatefulWidget {
  const Separeta_03({Key? key}) : super(key: key);

  @override
  State<Separeta_03> createState() => _Separeta_03State();
}

class _Separeta_03State extends State<Separeta_03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? Container(
                color: Colors.red,
                child: const Center(child: Text('縦')),
              )
            : Container(
                color: Colors.green,
                child: const Center(child: Text('横')),
              ));
  }
}
