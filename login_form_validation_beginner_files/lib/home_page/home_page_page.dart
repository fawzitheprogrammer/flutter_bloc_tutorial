import 'package:flutter/material.dart';

class HomePagePage extends StatelessWidget {
  const HomePagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePagePage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomePagePage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
