import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_furniture/features/filter/staes.dart';

class SelectCubit extends Cubit<SelectState> {
  SelectCubit() : super(SelectInit());

  static SelectCubit of(context) => BlocProvider.of(context);

  bool isSelected = false;

  void check(bool value) {
    isSelected = value;
    emit(SelectInit());
  }
}
