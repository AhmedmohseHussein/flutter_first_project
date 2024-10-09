import 'package:flutter/material.dart';

class B0 extends StatelessWidget {
  const B0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        drawer: const Drawer(),
        body: Container());
  }
}
