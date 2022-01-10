import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:memo_furniture/constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    required this.index,
    required this.ontap,
  });
  final int index;
  final Function(int) ontap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 25,
      currentIndex: index,
      selectedItemColor: kWhiteClr,
      unselectedItemColor: kGreyClr,
      onTap: ontap,
      backgroundColor: kRedClr,
      elevation: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.cube,
              color: kWhiteClr,
            ),
            label: '.'),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              color: kWhiteClr,
            ),
            label: '.'),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              color: kWhiteClr,
            ),
            label: '.'),
      ],
    );
  }
}
