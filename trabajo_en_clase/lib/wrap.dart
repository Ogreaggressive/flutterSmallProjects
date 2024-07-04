import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  const WrapPage({super.key});

  @override
  State<WrapPage> createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 20.0,
      runSpacing: 40.0,
      children: [
        Text("1",
        style: TextStyle(color: Theme.of(context).colorScheme.primary)),
        Text("2"),
        Text("3"),
        Text("4"),
        Text("5"),
        Text("6"),
        Text("7"),
        Text("8"),
        Text("9"),
        Text("10"),
        Text("11"),
      ],
    );
  }
}
