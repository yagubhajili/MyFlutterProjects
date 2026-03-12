import 'package:bloc_training_app/app/app.dart';
import 'package:bloc_training_app/features/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocTrainingApp());
}

class BlocTrainingApp extends StatelessWidget {
  const BlocTrainingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (context) => CounterBloc(), child: App()),
    );
  }
}
