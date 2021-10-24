import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyXyloPage(title: 'Xylophone Home Page'),
    );
  }
}

class MyXyloPage extends StatefulWidget {
  const MyXyloPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyXyloPage> createState() => _MyXyloPageState();
}

class _MyXyloPageState extends State<MyXyloPage> {
  void playSound(int selectedNote) {
    final player = AudioCache();
    player.play('note$selectedNote.wav');
  }

  Expanded buildKey({Color? color, required int selectedNote}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(selectedNote);
        },
        style: ElevatedButton.styleFrom(primary: color),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, selectedNote: 1),
              buildKey(color: Colors.orange, selectedNote: 2),
              buildKey(color: Colors.yellow, selectedNote: 3),
              buildKey(color: Colors.green, selectedNote: 4),
              buildKey(color: Colors.indigo, selectedNote: 5),
              buildKey(color: Colors.blue, selectedNote: 6),
              buildKey(color: Colors.purple, selectedNote: 7),
            ],
          ),
        ),
      ),
    );
  }
}
