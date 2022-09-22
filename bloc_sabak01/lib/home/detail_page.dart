import 'dart:developer';

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage(this.counter, {super.key});

  int counter;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  void _incrementCounter() {
    // build chakyrat
    setState(() {
      widget.counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    log('build method ishtedi');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, widget.counter);
              },
              child: const Text('DetailPage'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
