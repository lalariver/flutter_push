import 'package:flutter/material.dart';
import 'package:flutter_application_image/detail.dart';
import 'package:flutter_application_image/more_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'detail1': (context) => const Detail(),
        'detail2': (context) => const MoreDetail(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Image'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Image.asset(
            'assets/images/02.jpg',
            width: 200,
            height: 200,
          ),
          Image.network(
            'https://truth.bahamut.com.tw/s01/202109/a527aa0cfaae4fc55832d887a328cd0e.JPG',
            height: 200,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, 'detail1');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail(),
                ),
              );
            },
            child: const Text('Go to detail screen'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, 'detail2');
              Navigator.pushNamedAndRemoveUntil(
                context,
                'detail2',
                (route) => false,
              );
            },
            child: const Text('Go to more detail screen'),
          )
        ],
      )),
    );
  }
}
