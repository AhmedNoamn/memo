part of '../view.dart';

class TextUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'HELLO AHMED',
          style: headingStyle2,
        ),
        SizedBox(height: 10),
        Text(
          'WELCOME TO RAMNI STORE',
          style: bodyStyle.copyWith(fontSize: 20),
        ),
      ],
    );
  }
}
