import 'package:flutter/material.dart';
import 'package:memo_furniture/constant.dart';
import 'package:memo_furniture/widgets/button.dart';
import 'package:memo_furniture/widgets/textbutton.dart';

part 'units/text_unit.dart';
part 'units/change_image.dart';
part 'units/buttons_units.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: kRedClr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextUnit(),
          ImageUnit(),
          ButtonsUnit(),
        ],
      ),
    ));
  }
}
