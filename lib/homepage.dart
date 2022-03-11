import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = WordPair.random().asPascalCase;

  void _reName() {
    setState(() {
      _name = WordPair.random().asPascalCase;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Your new awesome name is:',
              ),
              Text(
                _name,
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: _reName,
        tooltip: 'New Name',
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}
