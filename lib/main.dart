import 'package:flutter/material.dart';

void main() {
  runApp(const DuckyApp());
}

class DuckyApp extends StatelessWidget {
  const DuckyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View Example - minibuilds.io',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Minibuilds Ducky Grid'),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: DuckyGrid(32),
        ),
      ),
    );
  }
}

class DuckyGrid extends StatelessWidget {
  final int duckyCount;

  const DuckyGrid(this.duckyCount, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
      ),
      itemCount: duckyCount,
      itemBuilder: (context, index) => Container(
        color: Colors.black87,
        child: Center(
          child: Image.asset('assets/minibuilds-ducky.png'),
        ),
      ),
    );
  }
}
