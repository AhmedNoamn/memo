import 'package:flutter/material.dart';
import 'package:memo_furniture/constant.dart';
import 'package:memo_furniture/features/checkout/units/successDialog.dart';
import 'package:memo_furniture/widgets/button.dart';

part 'units/address.dart';
part 'units/pay_method.dart';
part 'units/check_button.dart';

class CheckOutView extends StatefulWidget {
  @override
  _CheckOutViewState createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Checkout',
            style: textStyle5,
          ),
          backgroundColor: kWhiteClr,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          color: kWhiteClr,
          child: ListView(
            children: [
              Text(
                'Shipping Address',
                style: textStyle5.copyWith(fontSize: 20),
              ),
              SizedBox(height: 10),
              _ShippingAddress(),
              Text(
                'Payment Methods',
                style: textStyle5.copyWith(fontSize: 20),
              ),
              _PayMethod(),
              _CheckButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
