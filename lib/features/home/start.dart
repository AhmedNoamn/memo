import 'package:flutter/material.dart';
import 'package:memo_furniture/constant.dart';
import 'package:memo_furniture/features/cart_list/view.dart';

import 'package:memo_furniture/features/home/view.dart';
import 'package:memo_furniture/features/profile/view.dart';
import 'package:memo_furniture/widgets/bottom_nav_bar.dart';

class StartView extends StatefulWidget {
  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  int currentIndex = 1;

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> _pages = [
    CartView(),
    HomeView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kRedClr,
        child: _pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavBar(
        index: currentIndex,
        ontap: ontap,
      ),
    );
  }
}
