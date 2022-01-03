import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../core/routers/routers.dart';
import '../../widgets/button.dart';
import '../../widgets/inputfield.dart';
import '../../widgets/textbutton.dart';
import '../otp/view.dart';

part 'units/buttons_unit.dart';
part 'units/fields.dart';
part 'units/image_units.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kRedClr,
      ),
      body: Container(
        color: kRedClr,
        child: Column(
          children: [
            _ImageUnit(),
            SizedBox(height: 20),
            Expanded(child: SingleChildScrollView(child: _FieldsUnits())),
          ],
        ),
      ),
    );
  }
}
