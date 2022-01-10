import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_furniture/features/prodcut_detail/states.dart';

class AddItemCubit extends Cubit<ItemState> {
  AddItemCubit() : super(ItemInit());

  static AddItemCubit of(context) => BlocProvider.of(context);

  int itemCount = 0;

  void itemPlus() {
    itemCount++;
    emit(ItemPlus());
  }

  void itemMinus() {
    if (itemCount == 0) {
      itemCount = 0;
      emit(ItemInit());
    } else
      itemCount--;
    emit(ItemInit());
  }
}
