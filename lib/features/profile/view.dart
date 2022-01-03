import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:memo_furniture/constant.dart';
import 'package:memo_furniture/core/models/drawer_item.dart';
import 'package:memo_furniture/widgets/button.dart';
import 'package:memo_furniture/widgets/custom_container.dart';
import 'package:memo_furniture/widgets/list_tile.dart';

part 'units/info_unit.dart';
part 'units/tiles.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account', style: bodyStyle),
        elevation: 0,
        backgroundColor: kRedClr,
        actions: [
          CustomButton(
            onTap: () {},
            label: 'Edit Profile',
            style: buttonStyle.copyWith(fontSize: 14),
            buttonColor: kWhiteClr,
            height: 20,
            width: 130,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        color: kRedClr,
        child: Column(
          children: [
            _InfoUnit(),
            SizedBox(height: 20),
            Expanded(child: _TilesUnits()),
          ],
        ),
      ),
    );
  }
}
