import 'dart:developer';

import 'package:bloc_sabak01/home/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void _incrementCounter() {
    // build chakyrat
    setState(() {
      counter++;
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
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () async {
                final newCounter = await Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(counter),
                  ),
                );

                setState(() {
                  counter = newCounter ?? 0;
                });
              },
              child: const Text('DetailPage'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
