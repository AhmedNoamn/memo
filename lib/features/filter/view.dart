import 'package:flutter/material.dart';
import 'package:memo_furniture/widgets/button.dart';

import '../../constant.dart';
part 'units/button.dart';
part 'units/categories.dart';

class FilterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Filter',
          style: textStyle5,
        ),
        backgroundColor: kWhiteClr,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: kWhiteClr,
        child: ListView(
          children: [
            Row(
              children: [
                Text('Categories', style: headingStyle),
                Expanded(
                  child: Divider(
                    thickness: 0.7,
                    color: kGreyClr,
                  ),
                ),
              ],
            ),
            _CategoryUnit(),
            Row(
              children: [
                Text('Brand', style: headingStyle),
                SizedBox(width: 30),
                Expanded(
                  child: Divider(
                    thickness: 0.7,
                    color: kGreyClr,
                  ),
                ),
              ],
            ),
            _CategoryUnit(),
            SizedBox(width: 30),
            CustomButton(
              onTap: () {},
              label: 'Apply Filter',
              style: bodyStyle,
              buttonColor: kRedClr,
            ),
          ],
        ),
      ),
    );
  }
}
