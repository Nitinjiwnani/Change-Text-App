import 'package:change_text_app/bloc/change_text_bloc.dart';
import 'package:change_text_app/bloc/change_text_event.dart';
import 'package:change_text_app/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextChangeController extends StatelessWidget {
  final String text;
  const TextChangeController({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextChange(text: text),
        ElevatedButton(
            onPressed: () =>
                context.read<AppBlocBloc>().add(const ChangeTextEvent()),
            child: const Text('Change Text'))
      ],
    );
  }
}
