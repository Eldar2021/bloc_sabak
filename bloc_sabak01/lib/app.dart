import 'package:bloc_sabak01/home_page_with_bloc/cubit/counter_cubit.dart';
import 'package:bloc_sabak01/home_page_with_bloc/home_with_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePageWithBlocMain(),
        // home: const HomePage(),
      ),
    );
  }
}
