import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SetStateDemo extends StatefulWidget {
  const SetStateDemo({super.key});

  @override
  State<SetStateDemo> createState() => _SetStateDemoState();
}

class _SetStateDemoState extends State<SetStateDemo> {
  var count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
              child: Icon(Icons.add_a_photo_rounded),
              onPressed: () {
                setState(() {
                  count++;
                });
              },
            ),
            Text("$count"),
            ElevatedButton(
              child: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  count--;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
