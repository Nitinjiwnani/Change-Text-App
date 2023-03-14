import 'package:equatable/equatable.dart';

class AppState extends Equatable {
  final int index;
  final String text;

  const AppState.empty()
      : index = 0,
        text = 'initial text';

  const AppState({
    required this.index,
    required this.text,
  });

  @override
  List<Object?> get props => [index, text];
}
