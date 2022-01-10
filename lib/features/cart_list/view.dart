import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_furniture/features/prodcut_detail/cubit.dart';
import 'package:memo_furniture/widgets/button.dart';

import '../../constant.dart';
import '../../widgets/icon_button.dart';

part 'units/cart_unit.dart';
part 'units/button.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddItemCubit(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'My Cart',
            style: textStyle5,
          ),
          backgroundColor: kWhiteClr,
        ),
        body: Container(
          color: kWhiteClr,
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            children: [
              _CartUnit(),
              SizedBox(height: 20),
              _ButtonUnit(),
            ],
          ),
        ),
      ),
    );
  }
}
