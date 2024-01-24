import 'package:flutter/material.dart';

class HelpCenter extends StatelessWidget {
  static String routeName = '/HelpCenter';
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help Center"),
      ),
    );
  }
}
