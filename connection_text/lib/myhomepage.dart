import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            'counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );

    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
