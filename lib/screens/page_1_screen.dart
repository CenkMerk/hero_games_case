import 'package:flutter/material.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Center(
          child: Text("Page 1"),
        ),
      )),
    );
  }
}
