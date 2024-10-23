import 'package:flutter/material.dart';
import 'package:flutter_application_image/more_detail.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail screen',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MoreDetail(),
                  ),
                  (route) => false,
                );
                // push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => MoreDetail(),
                //   ),
                // );
              },
              child: const Text('Go to more detail screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to home'),
            ),
          ],
        ),
      ),
    );
  }
}
