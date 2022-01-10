import 'package:flutter/material.dart';
import 'package:memo_furniture/constant.dart';
import 'package:memo_furniture/core/models/drawer_item.dart';
import 'package:memo_furniture/widgets/list_tile.dart';

class SideBarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Heading(),
          Expanded(child: SingleChildScrollView(child: ListTileItems())),
        ],
      ),
    );
  }
}

class Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kRedClr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/coo.jpg'),
            radius: 35,
          ),
          SizedBox(height: 20),
          Text(
            'Ahmed Noaman',
            style: bodyStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          Text(
            'ahmednoaman@gmail.com',
            style: bodyStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 0.4,
            color: kWhiteClr,
          ),
        ],
      ),
    );
  }
}

class ListTileItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kRedClr,
      child: Column(
          children: DrawerItems.items
              .map((e) => CustomListTile(
                    color: kRedClr,
                    leading: Icon(
                      e.icon,
                      color: kWhiteClr,
                    ),
                    title: Text(
                      e.title,
                      style: bodyStyle.copyWith(fontWeight: FontWeight.normal),
                    ),
                  ))
              .toList()),
    );
  }
}
