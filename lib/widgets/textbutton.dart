import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.onPressed,
    required this.text,
  });
  final Widget text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: text);
  }
}
