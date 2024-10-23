import 'package:flutter/material.dart';

class MoreDetail extends StatelessWidget {
  const MoreDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'More Detail screen',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back to home'),
        ),
      ),
    );
  }
}