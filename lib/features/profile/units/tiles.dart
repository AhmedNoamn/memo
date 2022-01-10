part of '../view.dart';

class _TilesUnits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: ListView(
          //padding: EdgeInsets.symmetric(horizontal: 10),
          children: DrawerItems.item
              .map((e) => CustomListTile(
                  leading: Icon(e.icon),
                  title: Text(
                    e.title,
                    style: textStyle5,
                  )))
              .toList()),
    );
  }
}

class DrawerItems {
  static const order =
      DrawerItem(title: 'Upcoming Orders', icon: FontAwesomeIcons.truck);

  static const manageAddress =
      DrawerItem(title: 'Manage Address', icon: FontAwesomeIcons.mapMarkerAlt);

  static const updatePayment =
      DrawerItem(title: 'Update payment', icon: FontAwesomeIcons.creditCard);

  static const myChat =
      DrawerItem(title: 'My Chat', icon: FontAwesomeIcons.comment);

  static final List<DrawerItem> item = [
    order,
    manageAddress,
    updatePayment,
    myChat,
  ];
}
