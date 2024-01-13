import 'package:flutter/material.dart';

class AppBars extends StatefulWidget {
  const AppBars({super.key});

  @override
  State<AppBars> createState() => _AppBarsState();
}

class _AppBarsState extends State<AppBars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.yellow,
    );
  }
}
