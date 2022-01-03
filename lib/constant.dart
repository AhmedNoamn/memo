import 'package:flutter/material.dart';

const Color kWhiteClr = Colors.white;
const Color kRedClr = Color(0xFFFF3B5A);
const Color kDarkClr = Colors.black;
const Color kGreyClr = Colors.grey;
const Color kBabyBlueClr = Color(0xFFF4F6FB);

//dark and light theme
class Themes {
  static final light = ThemeData(
    primarySwatch: kRedClr as MaterialColor,
    backgroundColor: kWhiteClr,
    primaryColor: kRedClr,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    backgroundColor: kDarkClr,
    primaryColor: kDarkClr,
    brightness: Brightness.dark,
  );
}

//height and width size
double sizeHeight(BuildContext context, double fraction) {
  if (fraction <= 0) fraction = 1;
  final mediaQuery = MediaQuery.of(context);
  double height = mediaQuery.size.height;
  fraction =
      (height - (mediaQuery.padding.top + AppBar().preferredSize.height)) /
          fraction;

  return fraction;
}

double sizeWidth(BuildContext context, double fraction) {
  if (fraction <= 0) fraction = 1;
  final mediaQuery = MediaQuery.of(context);
  double width = mediaQuery.size.width;
  return width / fraction;
}

//styles for texts
TextStyle get headingStyle {
  return TextStyle(
    fontSize: 20,
    // fontWeight: FontWeight.bold,
    color: kDarkClr,
  );
}

TextStyle get headingStyle2 {
  return TextStyle(
    //fontWeight: FontWeight.bold,
    fontSize: 30,
    color: kWhiteClr,
  );
}

TextStyle get bodyStyle {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: kWhiteClr,
  );
}

TextStyle get bodyStyle2 {
  return TextStyle(
    fontSize: 17,
    color: kGreyClr,
  );
}

TextStyle get buttonStyle {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: kRedClr,
  );
}

TextStyle get textStyle5 {
  return TextStyle(
    fontSize: 18,
    color: kDarkClr,
  );
}

TextStyle get textStyle4 {
  return TextStyle(
    fontSize: 14,
    color: kDarkClr,
  );
}
