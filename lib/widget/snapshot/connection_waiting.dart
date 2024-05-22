import 'package:flutter/material.dart';

class ConnectionWaiting extends StatelessWidget {
  const ConnectionWaiting({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive();
  }
}
