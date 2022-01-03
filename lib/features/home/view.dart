import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:memo_furniture/widgets/bottom_nav_bar.dart';

import '../../constant.dart';
import '../../widgets/search_field.dart';
import '../../widgets/side_bar.dart';
import '../../widgets/textbutton.dart';

part 'units/card_item.dart';
part 'units/popular_item.dart';
part 'units/search_unit.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        controller: _controller,
        backgroundColor: kRedClr,
        cornerRadius: 25,
        itemGap: 20,
        drawerItems: [
          Heading(),
          ListTileItems(),
        ],
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kWhiteClr,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                _controller.toggle();
              },
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.bell,
                  color: kDarkClr,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.shoppingBasket,
                  color: kDarkClr,
                ),
              ),
            ],
          ),
          body: ListView(
            padding: EdgeInsets.all(15),
            children: [
              _SearchUnit(),
              _CardUnit(),
              _PopularItemUnit(),
            ],
          ),
        ),
      ),
    );
  }
}
