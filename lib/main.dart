import 'package:flutter/material.dart';

import 'cupertino_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const CupertinoPage());
        home: HelloPage('Hello World'));
  }
}

class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title) : super();

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'HelloWorld';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add), onPressed: _changeMessage),
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(_message, style: const TextStyle(fontSize: 30)),
              Text('$_counter', style: const TextStyle(fontSize: 30)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CupertinoPage()));
                  },
                  child: Text('page move'))
            ])));
  }

  void _changeMessage() {
    setState(() {
      _message = '헬로 월드';
      _counter++;
    });
  }
}
