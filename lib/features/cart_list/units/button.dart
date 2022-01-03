part of '../view.dart';

class _ButtonUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'TOTAL AMOUNT',
          style: bodyStyle2,
        ),
        Text(
          '\$1700.00',
          style: headingStyle.copyWith(fontSize: 25),
        ),
        SizedBox(height: 20),
        CustomButton(
          onTap: () {},
          label: 'CHECKOUT ',
          style: bodyStyle,
          buttonColor: kRedClr,
        )
      ],
    );
  }
}
