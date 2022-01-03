import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:memo_furniture/widgets/button.dart';

import '../../constant.dart';
import '../../widgets/icon_button.dart';

part 'units/button.dart';
part 'units/detail.dart';
part 'units/slider.dart';

class ProductDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kWhiteClr,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.heart,
                color: kDarkClr,
              ),
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            _SliderUnit(),
            SizedBox(height: 20),
            _DetailUnit(),
            _Buttons(),
          ],
        ),
      ),
    );
  }
}
