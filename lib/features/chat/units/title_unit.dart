part of '../view.dart';

class _TitleUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomListTile(
        color: kRedClr,
        leading: Image.asset(
          'assets/images/logo2.png',
        ),
        title: Text(
          'HI THERE',
          style: headingStyle2,
        ),
        subTitle: Text(
          'How can we help you?',
          style:
              bodyStyle.copyWith(fontSize: 18, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
