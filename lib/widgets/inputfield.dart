import 'package:flutter/material.dart';

import '../constant.dart';

// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {
  CustomInputField({
    required this.title,
    required this.hint,
    required this.obscureText,
    this.onSaved,
    this.validator,
    this.width,
    this.trailling,
  });

  bool obscureText;
  final Widget? trailling;
  final String hint;
  final double? width;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: width ?? double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: EdgeInsets.only(left: 15, bottom: 20, right: 15),
      decoration: BoxDecoration(
        border: Border.all(color: kBabyBlueClr),
        borderRadius: BorderRadius.circular(10),
        color: kBabyBlueClr,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: headingStyle,
          ),
          Divider(
            thickness: 2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  onSaved: onSaved,
                  validator: validator,
                  style: bodyStyle2,
                  autofocus: false,
                  cursorColor: kDarkClr,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: bodyStyle2,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      width: 0,
                      color: kWhiteClr,
                    )),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      width: 0,
                      color: kWhiteClr,
                    )),
                  ),
                ),
              ),
              trailling ?? Container(),
            ],
          ),
        ],
      ),
    );
  }
}
