import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItem {
  final String title;
  final IconData icon;
  const DrawerItem({
    required this.title,
    required this.icon,
  });
}

class DrawerItems {
  static const home = DrawerItem(title: 'Home', icon: FontAwesomeIcons.home);

  static const myCart =
      DrawerItem(title: 'My Cart', icon: FontAwesomeIcons.shoppingBasket);

  static const upComingOrder =
      DrawerItem(title: 'UpComing Order', icon: FontAwesomeIcons.cube);

  static const offerZone =
      DrawerItem(title: 'Offer Zone', icon: FontAwesomeIcons.gift);

  static const myAccount =
      DrawerItem(title: 'My Account', icon: FontAwesomeIcons.userAlt);

  static const myChat =
      DrawerItem(title: 'My Chat', icon: FontAwesomeIcons.mailBulk);

  static const help =
      DrawerItem(title: 'Help', icon: FontAwesomeIcons.questionCircle);

  static final List<DrawerItem> items = [
    home,
    myCart,
    upComingOrder,
    offerZone,
    myAccount,
    myChat,
    help
  ];
}
