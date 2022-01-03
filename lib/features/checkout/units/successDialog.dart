import 'package:flutter/material.dart';
import 'package:memo_furniture/constant.dart';
import 'package:memo_furniture/widgets/button.dart';
import 'package:memo_furniture/widgets/textbutton.dart';

showSuccessDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => SuccessDialoge(),
  );
}

class SuccessDialoge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteClr.withOpacity(0.9),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/success.png'),
            Text(
              'Your Order has been accepted',
              style: headingStyle,
            ),
            Text(
              "Your items has been placcd and is on it`s way to being processed",
              style: textStyle5,
              textAlign: TextAlign.center,
            ),
            CustomButton(
              onTap: () {},
              label: 'Track Order',
              style: bodyStyle,
              buttonColor: kRedClr,
            ),
            CustomTextButton(
                onPressed: () {},
                text: Text(
                  'Back to home',
                  style: buttonStyle,
                ))
          ],
        ),
      ),
    );
  }
}
