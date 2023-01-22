import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      routes: {
        "/home": (context) => MyHomePage(),
        "/second": (context) => Secondscreen(),
      },
      initialRoute: '/home',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Hoempage"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Click'),
        ),
      ),
    );
  }
}

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second back'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('back'),
        ),
      ),
    );
  }
}
