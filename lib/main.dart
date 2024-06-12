import 'package:flutter/material.dart';
import 'package:flutter_bloc_basic/sample_flutter_bloc/bloc/bloc/new_counter_bloc.dart';
import 'counter_page.dart';
import 'sample_flutter_bloc/new_counter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewCounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const NewCounterPage(),
      ),
    );
  }
}
