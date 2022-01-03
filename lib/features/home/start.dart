import 'package:flutter/material.dart';
import 'package:memo_furniture/constant.dart';

import 'package:memo_furniture/features/chat/view.dart';
import 'package:memo_furniture/features/home/view.dart';
import 'package:memo_furniture/features/profile/view.dart';
import 'package:memo_furniture/widgets/bottom_nav_bar.dart';

class StartView extends StatefulWidget {
  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  int currentIndex = 2;

  PageController pageController = PageController();

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 250),
      curve: Curves.easeOutBack,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: kRedClr,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        child: PageView(
          controller: pageController,
          children: [
            ChatView(),
            HomeView(),
            ProfileView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        index: currentIndex,
        ontap: ontap,
      ),
    );
  }
}
