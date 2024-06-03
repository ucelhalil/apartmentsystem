import 'package:flutter/material.dart';

class FlatView extends StatelessWidget {
  const FlatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flat'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text('Flat'),
      ),
    );
  }
}
