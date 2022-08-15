import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class No26_TimePicker extends StatelessWidget {
  const No26_TimePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: No26_Separate(),
    );
  }
}

class No26_Separate extends StatefulWidget {
  const No26_Separate({Key? key}) : super(key: key);

  @override
  State<No26_Separate> createState() => _No26_SeparateState();
}

class _No26_SeparateState extends State<No26_Separate> {
  //初期値
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 00);

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
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
              _timeOfDay.format(context).toString(),
              style: TextStyle(fontSize: 30),
            ),
            MaterialButton(
              onPressed: _showTimePicker,
              color: Colors.deepPurple,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'PICK TIME?',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
