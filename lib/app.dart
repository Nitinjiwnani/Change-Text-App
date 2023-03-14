import 'package:change_text_app/bloc/change_text_bloc.dart';
import 'package:change_text_app/bloc/change_text_state.dart';
import 'package:change_text_app/text_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('Scaffold');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => AppBlocBloc(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Text Change'),
          ),
          body: BlocConsumer<AppBlocBloc, AppState>(
            listener: (context, state) {},
            builder: (context, state) {
              print('Change text');
              return TextChangeController(
                text: state.text,
              );
            },
          ),
        ),
      ),
    );
  }
}
