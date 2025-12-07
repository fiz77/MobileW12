import 'package:flutter/material.dart';

class CounterStreamWidget extends StatelessWidget {
  final counterStream = Stream<int>.periodic(
    Duration(seconds: 1),
    (count) => count,
  ).asBroadcastStream(); // ← ubah menjadi broadcast

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: counterStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        return Text(
          "Counter: ${snapshot.data}",
          style: TextStyle(fontSize: 24),
        );
      },
    );
  }
}
