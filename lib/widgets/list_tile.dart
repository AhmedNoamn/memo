import 'package:flutter/material.dart';
import 'package:memo_furniture/constant.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {required this.leading,
      required this.title,
      this.subTitle,
      this.trailling,
      this.color});

  final Widget? leading;
  final Widget title;
  final Widget? subTitle;
  final Widget? trailling;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? kBabyBlueClr,
          border: Border.all(color: kBabyBlueClr, width: 0.5)),
      margin: EdgeInsets.only(bottom: 5),
      child: ListTile(
        leading: leading ??
            Container(
              width: 0,
            ),
        title: title,
        subtitle: subTitle ?? SizedBox(height: 0),
        trailing: trailling ?? SizedBox(height: 0),
      ),
    );
  }
}
