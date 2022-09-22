import 'dart:developer';

import 'package:bloc_sabak01/home_page_with_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPageWithBloc extends StatelessWidget {
  const DetailPageWithBloc({super.key});

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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterCubit>().kemituu,
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
