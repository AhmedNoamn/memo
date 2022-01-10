import 'package:flutter/material.dart';
import '../../constant.dart';

import '../../widgets/button.dart';
import '../../widgets/textbutton.dart';

part 'units/otp.dart';
part 'units/send_code.dart';
part 'units/image_units.dart';

class ForgotPassView extends StatelessWidget {
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
            SizedBox(height: 40),
            Expanded(
              child: SingleChildScrollView(
                child: CodeValue(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
