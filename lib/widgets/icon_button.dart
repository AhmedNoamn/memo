import 'package:flutter/material.dart';

import '../constant.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.onTap,
    required this.icon,
    this.buttonColor,
  });

  final Function() onTap;
  final Widget icon;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          //  padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: kGreyClr, width: 1.5),
            color: buttonColor ?? kWhiteClr,
          ),
          child: icon),
    );
  }
}
