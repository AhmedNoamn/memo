part of '../view.dart';

class _ShippingAddress extends StatelessWidget {
  final List<Widget> _shippingAddress = [
    CheckoutWidget(
      title: 'Name',
      subtitle: 'Ahmed Noaman',
    ),
    CheckoutWidget(
      title: 'Address',
      subtitle: 'domyat',
    ),
    CheckoutWidget(
      title: 'Pincode',
      subtitle: '424345',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _shippingAddress);
  }
}

class CheckoutWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const CheckoutWidget({
    required this.title,
    required this.subtitle,
  });
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
            title,
            style: textStyle5,
          ),
          //SizedBox(height: 10),
          Text(
            subtitle,
            style: textStyle5.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
