import 'package:flutter/material.dart';

class ForYouPage extends StatelessWidget {
  const ForYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('For You'),
      ),
      body: const Center(
        child: Text('For You Page'),
      ),
    );
  }
}
