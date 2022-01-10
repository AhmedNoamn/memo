import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_furniture/features/filter/cubit.dart';
import 'package:memo_furniture/widgets/button.dart';

import '../../constant.dart';
part 'units/button.dart';
part 'units/categories.dart';
part 'units/brand.dart';

class FilterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectCubit(),
      child: Scaffold(
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
              _BrandUnit(),
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
      ),
    );
  }
}
