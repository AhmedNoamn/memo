part of '../view.dart';

class _ShippingAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        3,
        (index) => CheckoutWidget(),
      ),
    );
  }
}

class CheckoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kBabyBlueClr,
          border: Border.all(color: kBabyBlueClr, width: 2.5)),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: textStyle5,
          ),
          //SizedBox(height: 10),
          Text(
            'Ahmed Noaman',
            style: textStyle5.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
