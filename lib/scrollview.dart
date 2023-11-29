import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      backgroundColor: Colors.transparent,
      body: SafeArea(child: Text("Hello Man")),
    );
  }
}
