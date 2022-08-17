import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class a_no02_ReorderableListView extends StatelessWidget {
  const a_no02_ReorderableListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: a02_2Separate(),
    );
  }
}

class a02_2Separate extends StatefulWidget {
  const a02_2Separate({Key? key}) : super(key: key);

  @override
  State<a02_2Separate> createState() => _a02_2SeparateState();
}

class _a02_2SeparateState extends State<a02_2Separate> {
  final items = [
    'item 1',
    'item 2',
    'item 3',
    'item 4',
    'item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ReorderableListView(
        onReorder: ((oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) newIndex--;

            final item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        }),
        children: [
          for (final item in items)
            ListTile(
              key: ValueKey(item),
              title: Text(item),
            )
        ],
      ),
    );
  }
}
