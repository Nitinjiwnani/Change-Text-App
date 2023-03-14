import 'package:change_text_app/bloc/change_text_event.dart';
import 'package:change_text_app/bloc/change_text_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocBloc extends Bloc<AppBlocEvent, AppState> {
  final List<String> textList = [
    'Initial Text',
    'Changed Text',
    'Changed Text Again',
  ];
  AppBlocBloc() : super(const AppState.empty()) {
    on<ChangeTextEvent>((event, emit) {
      try {
        int newIndex = state.index + 1;
        if (newIndex >= textList.length) {
          newIndex = 0;
        }
        emit(AppState(index: newIndex, text: textList[newIndex]));
      } on Exception catch (e) {
        print(e);
      }
    });
  }
}
