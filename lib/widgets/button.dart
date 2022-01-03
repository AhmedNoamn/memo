import 'package:flutter/material.dart';

import '../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onTap,
    required this.label,
    this.style,
    this.buttonColor,
    this.height,
    this.width,
  });
  final Function() onTap;
  final String label;
  final TextStyle? style;
  final Color? buttonColor;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 50,
        width: width ?? 250,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: buttonColor ?? kWhiteClr,
        ),
        child: Center(
          child: Text(
            label,
            style: style ?? buttonStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
