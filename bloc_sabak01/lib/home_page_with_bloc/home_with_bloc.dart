import 'dart:developer';

import 'package:bloc_sabak01/home_page_with_bloc/cubit/counter_cubit.dart';
import 'package:bloc_sabak01/home_page_with_bloc/detail_page_with_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageWithBlocMain extends StatefulWidget {
  const HomePageWithBlocMain({super.key});

  @override
  State<HomePageWithBlocMain> createState() => _HomePageWithBlocMainState();
}

class _HomePageWithBlocMainState extends State<HomePageWithBlocMain> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   // build chakyrat
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // final cubit = CounterCubit();

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
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                log('BlocBuilder method ishtedi');
                return Text(
                  '$state',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            ElevatedButton(
              onPressed: () async {
                await Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPageWithBloc(),
                  ),
                );
              },
              child: const Text('DetailPage'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterCubit>().koshuu,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
