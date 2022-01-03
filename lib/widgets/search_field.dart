import 'package:flutter/material.dart';

import '../constant.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField(
      {required this.hint,
      this.onSaved,
      this.validator,
      this.trailling,
      this.width});

  final Widget? trailling;
  final String hint;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      padding: EdgeInsets.only(left: 15, top: 3, right: 15),
      margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
      decoration: BoxDecoration(
        border: Border.all(color: kBabyBlueClr),
        borderRadius: BorderRadius.circular(20),
        color: kBabyBlueClr,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              onSaved: onSaved,
              validator: validator,
              style: bodyStyle2,
              autofocus: false,
              cursorColor: kDarkClr,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: bodyStyle2,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  width: 0,
                  color: kBabyBlueClr,
                )),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  width: 0,
                  color: kBabyBlueClr,
                )),
              ),
            ),
          ),
          trailling ?? Container(width: 0),
        ],
      ),
    );
  }
}
